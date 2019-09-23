class WeddingVenues::Venue
  attr_accessor :name, :location, :price, :url
  
  def self.eastbay
    # I should return a bunch of instances of venue
    puts <<-DOC.gsub /^\s*/, ''
      1. Fairview Metropolitan - Oakland, CA - $5,837 - https://www.wedding-spot.com/venue/1070/Fairview-Metropolitan/
      2. Canyon View - San Ramon, CA - $7,324 - https://www.wedding-spot.com/venue/82/Canyon-View/
      3. Rios Lovell Estate Winery - Livermore, CA - $15,980 - https://www.wedding-spot.com/venue/57/Rios-Lovell-Estate-Winery-Rios-Reserve-Estate/
    DOC
    
    venue_1 = self.new
    venue_1.name = "Fairview Metropolitan"
    venue_1.location = "Oakland, CA"
    venue_1.price = "$5,837"
    venue_1.url = "https://www.wedding-spot.com/venue/1070/Fairview-Metropolitan/"
    
    venue_2 = self.new
    venue_2.name = "Canyon View"
    venue_2.location = "San Ramon, CA"
    venue_2.price = "$7,324"
    venue_2.url = "https://www.wedding-spot.com/venue/82/Canyon-View/"
    
    venue_3 = self.new
    venue_3.name = "Rios Lovell Estate Winery"
    venue_3.location = "Livermore, CA"
    venue_3.price = "$15,980"
    venue_3.url = "https://www.wedding-spot.com/venue/57/Rios-Lovell-Estate-Winery-Rios-Reserve-Estate/"
  end

end