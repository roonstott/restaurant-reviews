
using System.Collections.Generic;

namespace BestRestaurant.Models
{
  public class Restaurant
  {
    public int RestaurantId { get; set; }
    public string Name { get; set; }
    public int CuisineId { get; set; }
    public Cuisine Cuisine { get; set; } 
    public List<Review> Reviews { get; set; }
  }
}