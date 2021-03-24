namespace P08MvcBasic.Controllers
{
  using Microsoft.AspNetCore.Mvc;
  using Microsoft.Extensions.Logging;
  using P08MvcBasic.Models;

  public class PersonController : Controller
  {
    private readonly ILogger<PersonController> _logger;

    public PersonController(ILogger<PersonController> logger)
    {
      _logger = logger;
    }

    public IActionResult Greeting()
    {
      return View();
    }

    public IActionResult Farewell()
    {
      return View();
    }

    public IActionResult Details()
    {
      var person = new Person
      {
        FirstName = "David",
        LastName = "Cruwys",
        Age = 50
      };

      return View(person);
    }

  }
}
