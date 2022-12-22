using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using BestRestaurant.Models;
using System.Collections.Generic;
using System.Linq;

namespace BestRestaurant.Controllers
{
  public class ReviewsController : Controller
  {
    private readonly BestRestaurantContext _db;

    public ReviewsController(BestRestaurantContext db)
    {
      _db = db;
    }

    public ActionResult Index(int id)
    {
      Restaurant thisRestaurant = _db.Restaurants
                                  .Include(restaurant => restaurant.Reviews)
                                  .FirstOrDefault(res => res.RestaurantId == id);
      return View(thisRestaurant);
    }
    public ActionResult Create(int id)
    {
      Review review = new Review();
      review.RestaurantId = id;
      return View(review);
    }

    [HttpPost]
    public ActionResult Create (Review review)
    {      
      _db.Reviews.Add(review);
      _db.SaveChanges();
      Restaurant thisRestaurant = _db.Restaurants
                                  .Include(restaurant => restaurant.Reviews)
                                  .FirstOrDefault(res => res.RestaurantId == review.RestaurantId);
      return View("Index", thisRestaurant);
    }
  }
}