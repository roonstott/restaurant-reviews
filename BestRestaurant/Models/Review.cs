
using System.Collections.Generic;

namespace BestRestaurant.Models
{
  public class Review
  {
    public int ReviewId { get; set; }
    public string Author { get; set; }
    public string ReviewBody { get; set; }
    public int Stars { get; set; }
    public int RestaurantId { get; set; }
    public Restaurant Restaurant { get; set; }  
  }
}