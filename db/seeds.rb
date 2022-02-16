# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
homeslice = { name: "Homeslice", address: "374-378 Old St, London EC1V 9LT", phone_number: "020 3151 1121", category: "chinese" }
brat = { name: "Brat", address: "4 Redchurch St, London E1 6JL", phone_number: "020 3883 3525", category: "italian" }
clove_club = { name: "Clove Club", address: "Shoreditch Town Hall, 380 Old St, London EC1V 9LT", phone_number: "020 7729 6496", category: "japanese" }
silk_road = { name: "Silk Road", address: "49 Camberwell Church St, London SE5 8TR", phone_number: "020 7703 4832", category: "french" }
leroy = { name: "Leroy", address: "18 Phipp St, London EC2A 4NU", phone_number: "020 7739 4443", category: "italian" }

[homeslice, brat, clove_club, silk_road, leroy].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
