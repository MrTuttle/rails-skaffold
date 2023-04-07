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

require "open-uri"
file1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
flat1 = Flat.new(name: "Igor", address: "rue des manteaux troués")
flat1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
flat1.save

file2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1920px-Image_created_with_a_mobile_phone.png")
flat2 = Flat.new(name: "Josette", address: "rue des pieds crevés")
flat2.photo.attach(io: file2, filename: "op.jpg", content_type: "image/png")
flat2.save


puts "ok"
