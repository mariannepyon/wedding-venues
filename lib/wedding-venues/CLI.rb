# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    puts "Wedding venues in East Bay, CA:"
    list_venues
    menu
    goodbye
  end
  
  def list_venues
    @venue = WeddingVenues::Venue.eastbay
    @venue.each.with_index(1) do |venue, i|
      puts "#{i}. #{venue.name} - #{venue.location} - #{venue.url}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the venue you'd like more info on or type list to see the venues again or exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_venue = @venue[input.to_i-1]
        puts "#{the_venue.name} - #{the_venue.location} - #{the_venue.url}"
      elsif input == "list"
        list_venues
      else
        puts "Option not found, type list or exit."
      end
    end
  end
  
  def goodbye
    puts "Thank you for visiting!"
  end
end