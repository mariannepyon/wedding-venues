# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    "Welcome to wedding venues!"
    list_venues
    menu
    goodbye
  end
  
  def list_venues
    puts "Which venue would you like more information on?"
    input = gets.strip
    
    venue = WeddingVenues::Venue.find(input.to_i)
    
    print_venues(venue)
    
    
  
  
#   def list_venues
#     @venue = WeddingVenues::Venue.new.make_venues
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