# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    list_venues
    menu
    goodbye
  end
  
  def list_venues
    puts "Wedding venues in East Bay, CA:"
    
    # puts <<-DOC.gsub /^\s*/, ''
    #   1. Fairview Metropolitan - Oakland, CA - $5,837 - https://www.wedding-spot.com/venue/1070/Fairview-Metropolitan/
    #   2. Canyon View - San Ramon, CA - $7,324 - https://www.wedding-spot.com/venue/82/Canyon-View/
    #   3. Rios Lovell Estate Winery - Livermore, CA - $15,980 - https://www.wedding-spot.com/venue/57/Rios-Lovell-Estate-Winery-Rios-Reserve-Estate/
    # DOC
    @venue = WeddingVenues::Venue.eastbay
    @venue.each.with_index(1) do |deal, i|
      puts "#{i}, #{venue.name} - #{venue.location} - #{venue.price} - #{venue.url}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the venue you'd like more info on or type list to see the venues again or exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        puts @deals[input.to_i-1]
      elsif input == "list"
        list_venues
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end
  
  def goodbye
    puts "Thank you for visiting!"
  end
end