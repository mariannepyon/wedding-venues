class WeddingVenues::Venue
  attr_accessor :name, :location, :description, :url
  
  
  def self.eastbay
    # Scrape weddingspot and then return venue based on that data'
    
    venues = []
    
    venues << self.scrape_weddingspot
    
    venues
  end
  
  def self.scrape_weddingspot
    doc = Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
    
      doc.css(".venue-box-content-with-budget").each do |venue|
        name = venue.css(".venue-name").text
        location = venue.css(".venue-region").text.strip
        description = venue.css(".venue-description").text.strip
        url = venue.css("a.venue-link").first.attr("href")
        
      Venue.new(name, location, description, url)
      
  end
end
end