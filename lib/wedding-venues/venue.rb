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
    
    # doc.css(".venue-box-content-with-budget").each do |venue|
    #   name = venue.css(".venue-name").text
    #   location = venue.css(".venue-region").text
    #   price = venue.css(".venue-properties-content").text.strip
    #   url = venue.css("a.venu-link").first.attr("href")
      binding.pry
    
 # end
end
end