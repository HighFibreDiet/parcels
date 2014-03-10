require './lib/parcels'

@parcels = []
@total_cost = 0

def main_menu
  puts 'Press "c" to calculate shipping cost of new parcel'
  puts 'Press "l" to list all parcels and shipping costs'
  puts 'Press "x" to exit'
  main_choice = gets.chomp
  if main_choice == "c"
    calculate_shipping_cost
  elsif main_choice == "x"
    puts 'So long!'
  elsif main_choice == "l"
    list_parcels
  else
  puts "Sorry, that wasn't a valid options"
  main_choice
  end
end

def calculate_shipping_cost
  puts 'Enter the parcel length'
  length = gets.chomp.to_i
  puts 'Enter the parcel width'
  width = gets.chomp.to_i
  puts 'Enter the parcel height'
  height = gets.chomp.to_i

  new_parcel = Parcel.new(length,width,height)

  @parcels << new_parcel

  puts 'Enter the shipping distance'
  distance = gets.chomp.to_i
  @total_cost += new_parcel.cost_to_ship(distance)

  puts "Cost: $"+"%.2f" % new_parcel.cost_to_ship(distance)

  puts "\n"
  main_menu
end

def list_parcels
  @parcels.each do |parcel|
    puts "Volume: #{parcel.volume} Shipping cost: $"+"%.2f" % parcel.cost_to_ship(parcel.distance)
  end
  puts "Total cost: $"+"%.2f" % @total_cost

  main_menu
end

main_menu
