class WeddingVenues::Venue
  
  attr_accessor :name, :location, :url

  def self.eastbay
    venues = []
    
    venues << self.scrape_weddingspot
    
    venues
  end
  
  def self.scrape_weddingspot
    doc = Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
    
    venue = self.new
      doc.css(".venue-box-content-with-budget").each do |venue|
        venue.name = doc.search("div.venue-box-content-with-budget .venue-name").text
        venue.location = doc.search("div.venue-box-content-with-budget .venue-region").text.strip
        venue.url = doc.search("a.venue-link").first.attr("href").strip
        
      #Venue.new(name, location, url)
      venue
      
  end
end
