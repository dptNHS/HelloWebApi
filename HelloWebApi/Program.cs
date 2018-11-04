using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using HelloWebApi.Helpers;
using HelloWebApi.Models;
using HelloWebApi.Services;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;

namespace HelloWebApi
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var config = new ConfigurationBuilder()
                .AddJsonFile("local.settings.json")
                .Build();
            LogService.FileLogPath = config["FileLogPath"];
            EfContext.EfConnectionString = config.GetConnectionString("Ef");
            CreateWebHostBuilder(args)
                .UseConfiguration(config)
                .Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                .UseStartup<Startup>();
    }
}
