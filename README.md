# README

* How I covered this assignment

# I had three tables, restaurants, pizzas and restaurantpizzas
- A `Restaurant` has many `Pizza`s through `RestaurantPizza`
- A `Pizza` has many `Restaurant`s through `RestaurantPizza`
- A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

# MVC Structure
* Used rails g resource on all three models to generate the model, migrations and controllers.

* For the foreign keys, use rails reference to add a foreign key `true` relationship on the RestaurantPizza table

* Made the routes using `resources` 
As good practice, I specified the routes needed and excluded the ones I was not working on.

# Active Record Relationships
- Mapped the relationships to the models as needed then added seed data to test     them out. 

# Serializers
- Generated serializers for all models to assist in nesting routes. 
- For the `GET /restaurants/:id`, I made a custom serializer (SingleRestaurantSerializer) so it would render both a restaurant and the pizza.
- For the `DELETE /restaurants/:id` route to work, added a dependecy destroy to the Restaurant model.
 `has_many :restaurant_pizzas, :dependent => :destroy`
I had to do this for the pizza model too, since by using refence as my foreign key generator led to SQL dependency error, which was resolved after all destroy dependencies were defined.

# Controller
Finished off by adding the right controller actions for all the deliverables to be met.

