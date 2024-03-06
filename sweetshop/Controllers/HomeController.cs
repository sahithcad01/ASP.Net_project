using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using sweetshop.Models;

namespace sweetshop.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Aboutus()
    {
        return View();
    }

    public IActionResult Sweets()
    {
        return View();
    }

    public IActionResult Snacks()
    {
        return View();
    }

    public IActionResult Allproducts()
    {
        return View();
    }

    public IActionResult Cart()
    {
        return View();
    }

    public IActionResult Contactus()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    public IActionResult Login()
    {
        return View();
    }

    public IActionResult Register()
    {
        return View();
    }


    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
