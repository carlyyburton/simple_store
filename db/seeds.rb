# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Product.destroy_all

676.times do
  new_product = Product.create!( title: Faker::Commerce.product_name,
                                 price: Faker::Commerce.price,
                                 stock_quantity: Faker::Number.within(range: 1..100))
end

puts "created #{Product.count} products."
