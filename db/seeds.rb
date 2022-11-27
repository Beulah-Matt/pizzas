# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
Pizza.destroy_all

puts " 🌱 Seeding Data"

restaurant1 = Restaurant.create(name: "Sarabi", address: "55 Westlands Drive, NRB")
restaurant2 = Restaurant.create(name: "Burger King", address: "12 Lavington Drive, NRB")
restaurant3 = Restaurant.create(name: "Kienyeji", address: "Ring road KIlimani")

pizza1 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizza2 = Pizza.create(name: "Peperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
pizza3 = Pizza.create(name: "Something Meaty", ingredients: "Dough, Tomato Sauce, Cheese, Bacon, Steak and Chicken Strips")

puts " ✅ Done seeding"