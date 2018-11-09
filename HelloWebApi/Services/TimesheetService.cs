using HelloWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HelloWebApi.Services
{

    public class TimesheetService
    {
        public EfContext Db { get; set; }
        public IEnumerable<TimesheetDays> Get(int page)
        {
            if (this.Db == null) Db = new EfContext();
            return Db.TimesheetDays
                .Skip(20 * page)
                .Take(20);
        }

    }
}
