# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning everything"
Restaurant.destroy_all

puts "Create restaurants"
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "06.01.49.10.81", category: "chinese" }
pizza_hut = { name: "Pizza Hut", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06.03.59.60.91", category: "italian" }
chez_meme = { name: "Chez Meme", address: "Rue Michel, La rochelle", phone_number: "02.38.49.10.81", category: "french" }
sushi_shop = { name: "Sushi shop", address: "65 rue des moines, Paris", phone_number: "02.35.49.10.81", category: "japanese" }
les_moules = { name: "Les moules", address: "rue Madame, Bruxelles", phone_number: "02.40.49.10.81", category: "belgian" }

[dishoom, pizza_hut, chez_meme, sushi_shop, les_moules].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}, #{restaurant.address}, #{restaurant.phone_number}, #{restaurant.category}"
end
puts "Finished!"

