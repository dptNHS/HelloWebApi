using System;
using System.Collections.Generic;
using System.Data;

using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace HelloWebApi.Helpers
{
    public class SqlStatement
    {
        public string sql { get; set; }
        public int length { get; set; }
        public int start { get; set; }
    }
    /// <summary>
    /// Static SQL methods
    /// </summary>
    public class SqlHelper
    {
        /// <summary>
        /// Find the SQL used to build the database. Should be in SQL/Build01.sql, 01,sql etc...
        /// </summary>
        /// <returns>String that will build a correct database</returns>
        public static string GetBuildSql(string sqlPath = "SQL")
        {
            var sb = new StringBuilder();
            var files = System.IO.Directory.GetFiles(sqlPath, "*.sql");
            foreach(var fn in files)
            {
                sb.Append(System.IO.File.ReadAllText(fn));
                sb.Append("\r\ngo\r\n");
            }
            return sb.ToString();
        }

        public static IEnumerable<SqlStatement> SplitSql(string sql)
        {
            var sqlStatements =
                sql.Split("\nGO,\ngo,go\r,GO\r".Split(",").ToArray(), StringSplitOptions.None)
                .Select(x => new SqlStatement { sql = x, length = Regex.Matches(x, "\r", RegexOptions.IgnoreCase).Count() })
                .ToArray();
            return sqlStatements;
        }

        /// <summary>
        /// executes sql and returns datatable
        /// </summary>
        /// <param name="sql">sql to execute</param>
        /// <param name="connectionString">sql connection string</param>
        /// <returns>a datatable of the data</returns>
        public static DataTable ExecuteSql(string sql, string connectionString)
        {
            using (var cnn = new SqlConnection(connectionString))
            {
                if (cnn.State != ConnectionState.Open) cnn.Open();

                var dt = new DataTable();
                using (var da = new System.Data.SqlClient.SqlDataAdapter(sql, cnn))
                {
                    da.Fill(dt);
                    return dt;
                }
            }
        }

        /// <summary>
        /// extracts ADODB connection string (starts data source=...) from EF connection string (starts metadata=res...)
        /// </summary>
        /// <param name="connectionString">EF connection string</param>
        /// <returns>ADODB connection string or exception</returns>
        private static string GetADODBConnectionStringFromEFConnectionString(string connectionString)
        {
            var rx = new Regex("provider connection string=\"(.*)\"", RegexOptions.IgnoreCase);
            var v = rx.Matches(connectionString);
            if (v == null || v.Count == 0 || v[0].Groups == null || v[0].Groups.Count < 2 || string.IsNullOrEmpty(v[0].Groups[1].Value))
            {
                var msg = string.Format(
                    "Could not get Sql connection string from {0}", connectionString
                    );
                throw new Exception(msg);
            }
            var w = v[0].Groups[1].Value;
            return w;
        }

        public static string JsonEscape(string s)
        {
            return
                 s.Replace("\\", "\\\\")
                 .Replace("\b", "\\b")
                 .Replace("\f", "\\f")
                 .Replace("\n", "\\n")
                 .Replace("\r", "\\r")
                 .Replace("\t", "\\t")
                 .Replace("\"", "\\\"")
                 ;

        }

        public static string DataTableToJson(DataTable dt)
        {
            //https://stackoverflow.com/a/28804533/1308736
            DataSet ds = new DataSet();
            ds.Merge(dt);
            StringBuilder JsonString = new StringBuilder();
            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                JsonString.Append("[");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    JsonString.Append("{");
                    for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                    {
                        if (j < ds.Tables[0].Columns.Count - 1)
                        {
                            JsonString.Append("\"" + ds.Tables[0].Columns[j].ColumnName.ToString() + "\":" 
                                + "\"" + JsonEscape(ds.Tables[0].Rows[i][j].ToString()) + "\",");
                        }
                        else if (j == ds.Tables[0].Columns.Count - 1)
                        {
                            JsonString.Append("\"" + ds.Tables[0].Columns[j].ColumnName.ToString() + "\":" 
                                + "\"" + JsonEscape(ds.Tables[0].Rows[i][j].ToString()) + "\"");
                        }
                    }
                    if (i == ds.Tables[0].Rows.Count - 1)
                    {
                        JsonString.Append("}");
                    }
                    else
                    {
                        JsonString.Append("},");
                    }
                }
                JsonString.Append("]");
                return JsonString.ToString();
            }
            else
            {
                return null;
            }
        }
    }
}