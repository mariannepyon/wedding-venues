# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    list_venues
    menu
    goodbye
  end
  
  def list_venues
    puts "Wedding venues in East Bay, CA:"
    
    puts <<-DOC.gsub /^\s*/, ''
      1. Fairview Metropolitan - Oakland, CA - $5,837 - https://www.wedding-spot.com/venue/1070/Fairview-Metropolitan/
      2. Canyon View - San Ramon, CA - $7,324 - https://www.wedding-spot.com/venue/82/Canyon-View/
      3. Rios Lovell Estate Winery - Livermore, CA - $15,980 - https://www.wedding-spot.com/venue/57/Rios-Lovell-Estate-Winery-Rios-Reserve-Estate/
    DOC
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the venue you'd like more info on or type list to see the venues again or exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on deal 1..."
      when "2"
        puts "More infor on deal 2"
      when "3"
        puts "More infor on deal 3"
      when "list"
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