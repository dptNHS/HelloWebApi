using HelloWebApi.Models;
using HelloWebApi.Services;
using Microsoft.EntityFrameworkCore;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using Xunit;

namespace XUnitTestProject2
{
    public class UnitTest1
    {
        private static Mock<DbSet<T>> CreateDbSetMock<T>(IEnumerable<T> elements) where T : class
        {
            var elementsAsQueryable = elements.AsQueryable();
            var dbSetMock = new Mock<DbSet<T>>();

            dbSetMock.As<IQueryable<T>>().Setup(m => m.Provider).Returns(elementsAsQueryable.Provider);
            dbSetMock.As<IQueryable<T>>().Setup(m => m.Expression).Returns(elementsAsQueryable.Expression);
            dbSetMock.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(elementsAsQueryable.ElementType);
            dbSetMock.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(elementsAsQueryable.GetEnumerator());

            return dbSetMock;
        }

        [Fact]
        public void Test1()
        {
            Assert.True(4 == 2 + 2, "the whole fabric of mathematics is crumbling before our eyes");

            var mock = new Moq.Mock<TimesheetService>();

            EfContext.EfConnectionString = "Server=localhost;Database=HelloWebApi;Trusted_Connection=True;";

            var itms = mock.Object.Get(0);

            var tds = (new List<TimesheetDays> {
                new TimesheetDays{Name="buffy", Hours = 33},
                new TimesheetDays{Name="willow", Hours = 33},
                new TimesheetDays{Name="zander", Hours = 33},
                new TimesheetDays{Name="spike", Hours = 33},
                new TimesheetDays{Name="angel", Hours = 33}
            });

            var mockContext = new Moq.Mock<EfContext>();
            mockContext.Setup(o => o.TimesheetDays).Returns(CreateDbSetMock<TimesheetDays>(tds).Object);

            //https://www.jankowskimichal.pl/en/2016/01/mocking-dbcontext-and-dbset-with-moq/

            mock.Object.Db = mockContext.Object;

            itms = mock.Object.Get(0);

        }
    }
}
