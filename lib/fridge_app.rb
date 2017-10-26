require_relative '../config/environment'
require_relative '../app/models/fridge'


def show_fridges
fridges = Fridge.all
fridges.each do |fridge|
    puts "Your #{fridge.brand} fridge is in the #{fridge.location}"
end
end

def add_fridge
    puts "Location"
    location = gets.chomp 
    puts "Brand"
    brand = gets.chomp
    puts "Size"
    location = gets.chomp.to_i
    puts "Has Food"
    has_food = gets.chomp
    puts "Has drinks"
    has_drinks = gets.chomp
    new_fridge = Fridge.create(location: :location, size: :size, brand: :brand, has_food: :has_food, has_drink: :has_drink)
    puts new_fridge
end

def delete_fridge

end

my_str = %q(
 Welcome to the Fridge App
 What would you like to do?
 1. See all of your fridges
 2. Add a Fridge
 3. Delete a Fridge
    Select a number:
)

puts my_str

user_decision = gets.chomp.to_i


if user_decision == 1
    show_fridges
end
if user_decision == 2
    add_fridge
end

# puts "4. View All Food items in a specific fridge"
# puts "Add a food item to a fridge
# puts "Eat a food item from a fridge (delete it)
# puts "View all drink items in a specific fridge
# puts "Add a drink item to a fridge
# puts "Consume PART of a drink from a fridge (update its size in ounces)
# puts "Consume ALL of a drink from a fridge (delete it)

