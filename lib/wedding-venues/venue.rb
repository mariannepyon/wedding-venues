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
    binding.pry
    
    # venue = self.new
    # venue.name = doc.search("")
    # venue.location =
    # venue.price = 
    # venue.url = 
    
  end
end