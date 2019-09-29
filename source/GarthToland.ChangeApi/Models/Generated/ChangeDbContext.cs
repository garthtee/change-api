using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace GarthToland.ChangeApi.Models.Generated
{
    public partial class ChangeDbContext : DbContext
    {
        public ChangeDbContext()
        {
        }

        public ChangeDbContext(DbContextOptions<ChangeDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Changes> Changes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Changes>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.Body).IsRequired();

                entity.Property(e => e.Id).ValueGeneratedOnAdd();

                entity.Property(e => e.Title).IsRequired();
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
