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
    
      venue = self.new
        #doc.css(".venue-box-content-with-budget").each do |venue|
      venue.name = doc.search(".venue-name").text
      venue.location = doc.search(".venue-region").text.strip
      venue.description = doc.search(".venue-description").text.strip
      venue.url = doc.search("a.venue-link").first.attr("href")
      
      #Venue.new(name, location, description, url)
      venue
  end
end
