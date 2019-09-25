# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    WeddingVenues::Scraper.new.make_venues
    puts "Wedding venues in East Bay, CA:"
    start
    # list_venues
    # menu
    # goodbye
  end
  
  def start
    
    puts ""
    puts "What venue would you like more information on?"
    input = gets.strip.to_i
    
    venue = WeddingVenues::Venue.find(input.to_i)
  
    print_venue(venue)

    puts ""
    puts "Would you like to see another venue? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end
  end

  def print_venue(venue)
    puts ""
    puts "----------- #{venue.name}-----------"
    puts ""
    puts "Location:           #{venue.location}"
    puts "Head Chef:          #{restaurant.head_chef}"
    puts "Style of Food:      #{restaurant.food_style}"
    puts "Standout Dish:      #{restaurant.best_dish}"
    puts "Contact:            #{restaurant.contact}"
    puts "Website:            #{restaurant.website_url}"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{restaurant.description}"
    puts ""
  end

  def print_restaurants(from_number)
    puts ""
    puts "---------- Restaurants #{from_number} - #{from_number+9} ----------"
    puts ""
    WorldsBestRestaurants::Restaurant.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{restaurant.name} - #{restaurant.location}"
    end
  end

end
  
  
#   def list_venues
#     @venue = WeddingVenues::Venue.eastbay
#     @venue.each.with_index(1) do |venue, i|
#       puts "#{i}. #{venue.name} - #{venue.location} - #{venue.url}"
#     end
#   end
  
#   def menu
#     input = nil
#     while input != "exit"
#       puts "Enter the number of the venue you'd like more info on or type list to see the venues again or exit:"
#       input = gets.strip.downcase
      
#       if input.to_i > 0
#         the_venue = @venue[input.to_i-1]
#         puts "#{the_venue.name} - #{the_venue.location} - #{the_venue.url}"
#       elsif input == "list"
#         list_venues
#       else
#         puts "Option not found, type list or exit."
#       end
#     end
#   end
  
#   def goodbye
#     puts "Thank you for visiting!"
#   end
# end