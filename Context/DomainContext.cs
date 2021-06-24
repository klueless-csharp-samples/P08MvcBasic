namespace P08MvcBasic.Context
{
  using Microsoft.EntityFrameworkCore;
  using P08MvcBasic.Models;

  public class DomainContext : DbContext
  {
    public DbSet<Product> Products { get; set; }

    public DbSet<Sale> Sales { get; set; }

    public DbSet<SaleLineItem> SaleLineItems { get; set; }

    public DbSet<Store> Stores { get; set; }

    public DbSet<Terminal> Terminals { get; set; }

  }
}
