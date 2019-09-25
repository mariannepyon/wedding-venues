class WeddingVenues::Venue
  attr_accessor :name, :location, :price, :url
  
  def self.eastbay
    # Scrape weddingspot and then return venue based on that data'
    
    venues = []
    
    venues << self.scrape_weddingspot
    
    venues
  end
  
  def self.scrape_weddingspot
    doc = Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
    # cells = doc.search("div.venue-box-cell")
    # venues = []
    # cells.each { |element| 
    #   venue_name = element.search("div.venue-name").text 
    #   venue_location = 1234
    #   venues << 
    # }
    # puts venue_names
    binding.pry
    
  # name 
   
   
  end
end