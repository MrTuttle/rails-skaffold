# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all
puts "creating flats..."
Flat.create!(name: "Poppy Puppy", address: "12 rue Gambetta, 71000 Mâcon")
Flat.create!(name: "La maison du coin", address: "12 rue Impecable, 71000 Mâcon")
Flat.create!(name: "Yummy", address: "12 rue m, 71000 Mâcon")
puts "ok"
