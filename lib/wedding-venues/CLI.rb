# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    list_venues
    menu
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
    puts "Enter the number of the venue you'd like more info on:"
end
end