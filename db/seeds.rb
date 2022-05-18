# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

name =["John Weng", "Terass hotel", "Dahlia", "Bambou Paris", "Chez Madeleine"]
address = ["Poissonière", "Blanche", "Montmarte", "Jeuners", "Boulogne"]
phone_number = ["+33 6", "+33 7", "+33 4", "+33 2", "+33 3"]
comments = ["miam", "beurk", "top", "bof", "cool", "jadore"]

5.times do
  restaurant = Restaurant.new(name: name.sample, address: address.sample, phone_number: phone_number.sample, category: Restaurant::CATEGORIES.sample)
  restaurant.save
  10.times do
    review = Review.new(content: comments.sample, rating: (0..5).to_a.sample)
    review.restaurant = restaurant
    review.save
  end
end
