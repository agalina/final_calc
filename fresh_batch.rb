#1. Restaurants can notify shelters about extra food
#2. Shelters can get the extra food from te resturants
#--> Restaurants inputs information about themselves(name and amount of food)
#--> That information outputs to the shelter

#---- PREP ----
restaurant_data = {}
def fresh_batch_data(restaurant_data, name, weight) # fresh batch data will send to fresh batch org
  restaurant_data [name] = weight
  return restaurant_data
end

def shelter_message(restaurant_data) 
  restaurant_data.each do |name, weight|
    return "Dear Shelter,\n #{name} has #{weight} pounds of food left. come and get it! \nSincerly \nFresh Batch"
  end
end
#---- RUNNING ----

puts "WELCOME TO FRESH BATCH!"

puts "What is the name of your resturant?"
name = gets.chomp

puts "How many pounds of extra food do you have?"
pounds_of_food = gets.chomp


puts fresh_batch_data(restaurant_data, name, pounds_of_food)
puts shelter_message(restaurant_data)