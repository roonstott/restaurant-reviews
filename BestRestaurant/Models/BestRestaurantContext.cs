using Microsoft.EntityFrameworkCore;

namespace BestRestaurant.Models
{
  public class BestRestaurantContext : DbContext
  {
    public DbSet<Cuisine> Cuisines { get; set; }
    public DbSet<Restaurant> Restaurants { get; set; }

    public BestRestaurantContext(DbContextOptions options) : base(options) { }
  }
}


//The ToDoListContext class contains a property of type DbSet<Item> named Items that represents the items table in our database. With this Items property, we've declared an entity called Items in our To Do List database context.