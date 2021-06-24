namespace P08MvcBasic.Models
{
  using System;
  using System.Collections.Generic;

  public partial class Terminal
  {
    public int Id { get; set; }

    // Common fields
    public string Name { get; set; }



    // 1-Many relations
    public List<Sale> Sales { get; set; }

  }
}
