class WeddingVenues::Venue
  
  attr_accessor :name, :location, :url

  @@all = []
  
   def self.new_from_index_page(venue)
    self.new(
      venue.css("venue-name").text,
      venue.css("venue-region").text,
      "https://www.wedding-spot.com#{venue.css("a").attribute("href")}"
      )
    end
  
  # def self.new_from_index_page(venue)
  #   self.new(
  #     venue.css("div.venue-box-content-with-budget .venue-name").text,
  #     venue.css("div.venue-box-content-with-budget .venue-region").text,
  #     venue.css("a.venue-link").attr("href")
  #     )
  #   end
  
  def initialize(name=nil, location=nil, url=nil)
    @name = name
    @location = location
    @url = url
    @@all << self
  end
  
  def self.all
    @@all
  end
 

  def self.find(id)
    self.all[id-1]
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end
  
  # def self.eastbay
  #   venues = []
    
  #   venues << self.scrape_weddingspot
    
  #   venues
  # end
  
  # def self.scrape_weddingspot
  #   doc = Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
    
    # venue = self.new
    #   doc.css(".venue-box-content-with-budget").each do |venue|
    #     name = venue.css("div.venue-box-content-with-budget .venue-name").text
    #     location = venue.css("div.venue-box-content-with-budget .venue-region").text.strip
    #     url = venue.css("a.venue-link").first.attribute("href").strip
      
#       venue = self.new
#         name = doc.search("div.venue-box-content-with-budget .venue-name").text
#         location = doc.search("div.venue-box-content-with-budget .venue-region").text.strip
#         url = doc.search("a.venue-link").first.attribute("href").strip
      
#       venue
#       end
      
#       #Venue.new(name, location, url)
      
      
#   #end
# end
