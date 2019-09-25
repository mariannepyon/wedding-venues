# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    WeddingVenues::Scraper.new.make_venues
    puts "Congrats on your engagement!"
    start
    # list_venues
    # menu
    # goodbye
  end
  
  def start
    puts ""
    puts "What venue would you like more information on?"
    input = gets.strip
    
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
    puts "URL:                #{venue.url}"
    puts ""
  end

  # def print_restaurants(from_number)
  #   puts ""
  #   puts "---------- Venues #{from_number} - #{from_number+9} ----------"
  #   puts ""
  #   WorldsBestRestaurants::Restaurant.all[from_number-1].each.with_index(from_number) do |venue, index|
  #     puts "#{index}. #{venue.name} - #{venue.location}"
  #   end
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