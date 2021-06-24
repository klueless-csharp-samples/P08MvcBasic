namespace P08MvcBasic.Models
{
  using System;
  using System.Collections.Generic;

  public partial class SaleLineItem
  {
    public int Id { get; set; }

    // Common fields
    public int Quantity { get; set; }


    // 0-1 (Foreign Key relationships)
    public Product Product { get; set; }
    
    public Sale Sale { get; set; }
    

  }
}
