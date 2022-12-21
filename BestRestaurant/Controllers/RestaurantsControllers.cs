using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using BestRestaurant.Models;
using System.Collections.Generic;
using System.Linq;

namespace BestRestaurant.Controllers
{
  public class RestaurantsController : Controller
  {
    private readonly BestRestaurantContext _db;

    public RestaurantsController(BestRestaurantContext db)
    {
      _db = db;
    }

    // public ActionResult Index()
    // {
    //   List<Restaurant> model = _db.Restaurants.ToList();
    //   return View(model);
    // }

    public ActionResult Create()
    {
      ViewBag.CuisineId = _db.Cuisines.ToList();
      return View();
    }
    
    [HttpPost]
    public ActionResult Create(Restaurant restaurant)
    {
      _db.Restaurants.Add(restaurant);
      _db.SaveChanges();
      // int id = restaurant.CuisineId;
      // Cuisine thisCuisine = _db.Cuisines
      //             .Include(cuisine => cuisine.Restaurants)
      //             .FirstOrDefault(cuisine => cuisine.CuisineId == restaurant.CuisineId);

      // Restaurant thisRestaurant = _db.Restaurants
      //                             .FirstOrDefault(restaurant => restaurant.RestaurantId == id);
      return View("Details", restaurant);
    }

    public ActionResult Details(int id)
    {
      Restaurant thisRestaurant = _db.Restaurants
                                  .FirstOrDefault(restaurant => restaurant.RestaurantId == id);
      return View (thisRestaurant);
    }

  }
}

