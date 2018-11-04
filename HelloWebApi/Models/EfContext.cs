using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace HelloWebApi.Models
{
    public partial class EfContext : DbContext
    {
        public EfContext()
        {
        }

        public EfContext(DbContextOptions<EfContext> options)
            : base(options)
        {
        }

        public static string EfConnectionString { get; internal set; }
        public virtual DbSet<TimesheetDays> TimesheetDays { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(EfConnectionString);
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TimesheetDays>(entity =>
            {
                entity.Property(e => e.Name).HasMaxLength(50);
            });
        }
    }
}
