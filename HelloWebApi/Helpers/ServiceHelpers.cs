using HelloWebApi.Services;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloWebApi.Helpers
{
    public static class ServiceHelpers
    {
        public static int ExecuteNonQuery(string sql, string connectionString, IEnumerable<SqlParameter> sqlParams)
        {
            var sb = new StringBuilder();
            sb.Append("exec " + sql);

            using (var cnn = new SqlConnection(connectionString))
            {
                if (cnn.State != System.Data.ConnectionState.Open) cnn.Open(); //TODO: if the using closes the cnn, does this close it for everyone?
                using (var cmd = new SqlCommand(sql, cnn))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    foreach (var pr in sqlParams)
                    {
                        cmd.Parameters.Add(pr);
                    }
                    foreach (SqlParameter p in cmd.Parameters)
                    {
                        sb.Append(string.Format(" {0}={1}, ", p.ParameterName, p.Value ?? "null"));
                    }
                    try
                    {
                        var result = cmd.ExecuteNonQuery();
                        sb.Append(string.Format("Affected {0} rows", result));
                        LogService.Log(sql, 0, LogLevelEnum.trace, 1001, sb.ToString());
                        return result;
                    }
                    catch (SqlException ex)
                    {
                        sb.Append(string.Format("Caused SQL exception: {0}", ex.Message));
                        LogService.Log(sql, 0, LogLevelEnum.error, 1002, sb.ToString());
                        throw;
                    }
                    catch (Exception ex)
                    {
                        sb.Append(string.Format("Caused exception: {0}", ex.Message));
                        LogService.Log(sql, 0, LogLevelEnum.error, 1003, sb.ToString());
                        throw;
                    }

                }
            }
        }
        public static DataTable StoredProcGetDataTable(string procName, string connectionString, IEnumerable<SqlParameter> sqlParams)
        {
            var dt = new DataTable();
            var sb = new StringBuilder();
            var sql = procName;
            sb.Append("exec " + sql);

            using (var cnn = new SqlConnection(connectionString))
            {
                if (cnn.State != System.Data.ConnectionState.Open) cnn.Open(); //TODO: if the using closes the cnn, does this close it for everyone?
                using (var cmd = new SqlCommand(sql, cnn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    foreach (var pr in sqlParams)
                    {
                        cmd.Parameters.Add(pr);
                    }
                    foreach (SqlParameter p in cmd.Parameters)
                    {
                        sb.Append(string.Format(" {0}={1}, ", p.ParameterName, p.Value ?? "null"));
                    }
                    try
                    {
                        using(var da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(dt);

                            LogService.Log(sql, 0, LogLevelEnum.trace, 1004, sb.ToString());

                            return dt;
                        }
                    }
                    catch (SqlException ex)
                    {
                        sb.Append(string.Format("Caused SQL exception: {0}", ex.Message));
                        LogService.Log(sql, 0, LogLevelEnum.error, 1005, sb.ToString());
                        throw;
                    }
                    catch (Exception ex)
                    {
                        sb.Append(string.Format("Caused exception: {0}", ex.Message));
                        LogService.Log(sql, 0, LogLevelEnum.error, 1006, sb.ToString());
                        throw;
                    }

                }
            }
        }
        public static IEnumerable<T> StoredProcGet<T>(string procName, string connectionString, IEnumerable<SqlParameter> sqlParams = null)
            where T:class, new()
        {
            var sb = new StringBuilder();
            var sql = procName;
            sb.Append("exec " + sql);

            if (sqlParams == null)
            {
                sqlParams = new SqlParameter[] { };
            }

            using (var cnn = new SqlConnection(connectionString))
            {
                if (cnn.State != System.Data.ConnectionState.Open) cnn.Open(); //TODO: if the using closes the cnn, does this close it for everyone?
                using (var cmd = new SqlCommand(sql, cnn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    foreach (var pr in sqlParams)
                    {
                        if (pr.TypeName == "string" && string.IsNullOrEmpty(pr.Value.ToString())) pr.Value = DBNull.Value;
                        cmd.Parameters.Add(pr);
                    }
                    foreach (SqlParameter pr in cmd.Parameters)
                    {
                        sb.Append(string.Format(" {0}={1}, ", pr.ParameterName, pr.Value ?? "null"));
                    }

                    var targetTypeName = typeof(T).Name;
                    var propertyName = "";
                    int row = 1;
                    T p = new T();
                    string typeName = p.GetType().Name;

                    try
                    {
                        using (var rdr = cmd.ExecuteReader())
                        {
                            var pp = new List<T>();
                            if (!rdr.HasRows)
                            {
                                //return an empty []
                                return pp;
                            }
                            p = new T();
                            var accessor = FastMember.TypeAccessor.Create(p.GetType());
                            //TODO: maybe only do this in debug mode
                            var rdrFields = new List<string>();
                            for (int c = 0; c < rdr.FieldCount; ++c)
                            {
                                rdrFields.Add(rdr.GetName(c));
                            }
                            var accessorFields = accessor.GetMembers().Select(x => x.Name).ToList();
                            //get T fields not in rdr
                            var x1 = accessorFields.Where(x => !rdrFields.Contains(x));
                            //get rdr fields not in T
                            var x2 = rdrFields.Where(x => !accessorFields.Contains(x));
                            if(x1.Any() || x2.Any()){
                                var msg = string.Format("ServiceHelpers.StoredProcGet Mismatch for Proc:{0} - Type:{1}",
                                    procName, typeName );
                                if (x1.Any())
                                {
                                    msg += ": T fields not in sql: "
                                        + x1.Aggregate((a, b) => string.Format("{0}, {1}", a, b));
                                }
                                if (x2.Any())
                                {
                                    msg += ": sql fields not in T: "
                                        + x2.Aggregate((a, b) => string.Format("{0}, {1}", a, b));
                                }
                                throw new Exception(msg);
                            }
                            while (rdr.Read())
                            {
                                p = new T();
                                for (int c = 0; c < rdr.FieldCount; ++c)
                                {
                                    object v = rdr.GetValue(c);
                                    if (v.GetType() == typeof(DBNull))
                                    {
                                        v = null;
                                    }
                                    propertyName = rdr.GetName(c);
                                    accessor[p, propertyName] = v;
                                }
                                pp.Add(p);
                                row++;
                            }
                            sb.Append(string.Format("--Returned {0} rows", pp.Count()));
                            LogService.Log(sql, 0, LogLevelEnum.trace, 1007, sb.ToString());
                            return pp;
                        }

                    }
                    catch (SqlException ex)
                    {
                        throw;
                        var msg = string.Format("Reading {0}.{1} Caused SQL exception: {2}", targetTypeName, propertyName, ex.Message);
                        sb.Append(msg);
                        LogService.Log(sql, 0, LogLevelEnum.error, 1002, sb.ToString());
                        throw new Exception(message: msg, innerException: ex);
                    }
                    catch (Exception ex)
                    {
                        var msg = string.Format("ServiceHelpers.StoredProcGet for Proc:{0} Type:{1} row: {2} field: {3} caused exception: {4}",
                                    procName, typeName, row, propertyName, ex.Message);
                        throw new Exception(message: msg, innerException:ex);
                        LogService.Log(sql, 0, LogLevelEnum.error, 1002, msg);
                        throw;
                    }

                }
            }
        }
    }
}
