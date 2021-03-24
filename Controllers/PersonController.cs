namespace P08MvcBasic.Controllers
{
  using Microsoft.AspNetCore.Mvc;
  using Microsoft.Extensions.Logging;

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

    }
}
