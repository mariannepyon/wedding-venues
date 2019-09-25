class WeddingVenues::Venue
  
  attr_accessor :name, :location, :url
  
#   @@all = []
  
#   def self.new_from_index_page(v)
#     self.new(
#       v.css("h2").text,
#       "https://www.wedding-spot.com/#{v.css("a").attribute("href").text}",
#       v.css("h3").text,
#       v.css(".position").text
#       )
#   end

#   def initialize(name=nil, location=nil, url=nil)
#     @name = name
#     @location = location
#     @url = url
#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def self.find(id)
#     self.all[id-1]
#   end

#   def venue_name
#     @venue_name ||= doc.search("div.venue-box-content-with-budget .venue-name").text
#   end
  
#   def venue_location
#     @venue_location ||= doc.search("div.venue-box-content-with-budget .venue-region").text.strip
#   end
  
#   def venue_url
#     @venue_url ||= doc.search("a.venue-link").first.attr("href").strip
#   end
  
#   def doc
#     @doc ||= Nokogiri::HTML(open(self.url))
#   end
# end

  def self.easybay
    venues = []
    
    venues << self.scrape_weddingspot
    
    venues
  end
  
  def self.scrape_weddingspot
    doc = Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
    
    venue = self.new
      #doc.css(".venue-box-content-with-budget").each do |venue|
        venue.name = doc.search("div.venue-box-content-with-budget .venue-name").text
        venue.location = doc.search("div.venue-box-content-with-budget .venue-region").text.strip
        venue.url = doc.search("a.venue-link").first.attr("href").strip
        
      #Venue.new(name, location, url)
      venue
      
  end
end
#end