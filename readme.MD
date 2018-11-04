# HelloWebAPI

This is the basic Microsoft ASP.NET Core Web Application
Using the API project template

PLUS
* local.settings.json with connectionStrings
* Startup.cs
  * AddCors
  * services.Add Configuration
* Program.cs
  * main reads local.settings.json
  * LogService.FileLogPath = 
* ValuesController
  * IConfiguration
  * Constructor
  * more output in Get method
* Helpers	
  * ServiceHelpers
  * SqlHelpers
* Services
  * LogLevelEnum
  * LogService
* Packages
  * FastMember
* SQL folder: Build01.sql
* TimesheetDaysAController

TODO

* Create a database
* Populate it with Build01.sql
* alter local.settings.json to suit your database name

Use Entity Framework
* Add EF Core
* Scaffold-DbContext "Server=localhost;Database=HelloWebApi;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -Context EfContext