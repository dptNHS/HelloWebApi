using System;
using System.Collections.Generic;

namespace HelloWebApi.Models
{
    public partial class TimesheetDays
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double? Hours { get; set; }
    }
}
