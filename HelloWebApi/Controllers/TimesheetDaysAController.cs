using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using HelloWebApi.Helpers;
using HelloWebApi.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace HelloWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TimesheetDaysAController : ControllerBase
    {
        IConfiguration _config;
        public TimesheetDaysAController(IConfiguration config) : base()
        {
            _config = config;
        }
        // GET: api/TimesheetDaysA
        [HttpGet]
        public object Get()
        {
            var sql = "select top 100 * from TimesheetDays";
            var dt = SqlHelper.ExecuteSql(sql, _config.GetConnectionString("Db"));
            return dt.Rows;

            //foreach(DataRow row in dt.Rows)
            //{
            //    yield return row.ItemArray;
            //}

            //return new string[] { "value1", "value2" };

        }

        [Route("Ef/{page}")]
        public IEnumerable<TimesheetDays> GetEf(int page, string name = null)
        {
            var db = new EfContext();
            return db.TimesheetDays
                .Skip(20 * page)
                .Take(20);
        }

        // GET: api/TimesheetDaysA/5
        [HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/TimesheetDaysA
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/TimesheetDaysA/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
