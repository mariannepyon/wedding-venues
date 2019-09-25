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
        name = venue.css("div.venue-box-content-with-budget .venue-name").text
        location = venue.css("div.venue-box-content-with-budget .venue-region").text.strip
        url = venue.css("a.venue-link").first.attr("href").strip
      end
      
      #Venue.new(name, location, url)
      venue
      
  end

