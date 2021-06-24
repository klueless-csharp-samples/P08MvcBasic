namespace P08MvcBasic.Models
{
  using System;
  using System.Collections.Generic;

  public partial class Store
  {
    public int Id { get; set; }

    // Common fields
    public string TradingName { get; set; }



    // 1-Many relations
    public List<Terminal> Terminals { get; set; }

    public List<Product> Products { get; set; }

  }
}
