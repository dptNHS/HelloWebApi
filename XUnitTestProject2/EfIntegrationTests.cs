using HelloWebApi.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace XUnitTestProject2
{
    public class EfIntegrationTests
    {
        [Fact]
        public async Task ShouldCreateEfContext()
        {
            var cs = "Server=localhost;Database=HelloWebApi;Trusted_Connection=True;";
            var optionsBuilder = new DbContextOptionsBuilder<EfContext>();
            optionsBuilder.UseSqlServer(cs, p => { p.CommandTimeout(60); });
            var o = optionsBuilder.Options;

            var ctx = new EfContext(optionsBuilder.Options);

            var tds = ctx.TimesheetDays;

            var wally = await ctx.TimesheetDays.FirstOrDefaultAsync(td => td.Name.Contains("Wally"));

            return;

        }

    }
}
