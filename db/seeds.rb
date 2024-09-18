# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

the_cozy_bistro = { name: "The Cozy Bistro", address: "123 Maple Street, Springfield, IL 62701", phone_number: "(217) 555-0198", category: ["French", "Bistro", "Vegan"] }
spice_haven = { name: "Spice Haven", address: "456 Elm Avenue, Springfield, IL 62701", phone_number: "(217) 555-0345", category: ["Indian", "Vegetarian", "Takeout"] }
bella_pizza = { name: "Bella Pizza", address: "789 Oak Road, Springfield, IL 62701", phone_number: "(217) 555-0678", category: ["Italian", "Pizza", "Family-Friendly"] }
sushi_delight = { name: "Sushi Delight", address: "321 Pine Lane, Springfield, IL 62701", phone_number: "(217) 555-0912", category: ["Japanese", "Sushi", "Seafood"] }
taco_fiesta = { name: "Taco Fiesta", address: "654 Cedar Drive, Springfield, IL 62701", phone_number: "(217) 555-0456", category: ["Mexican", "Tacos", "Casual Dining"] }

[the_cozy_bistro, spice_haven, bella_pizza, sushi_delight, taco_fiesta].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished! #{restaurant.count} added"
