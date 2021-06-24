namespace P08MvcBasic.Models
{
  using System;
  using System.Collections.Generic;

  public partial class Sale
  {
    public int Id { get; set; }

    // Common fields
    public DateTime Time { get; set; }



    // 1-Many relations
    public List<SaleLineItem> Items { get; set; }

  }
}
