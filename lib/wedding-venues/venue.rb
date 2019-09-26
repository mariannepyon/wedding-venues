class WeddingVenues::Venue
  
  attr_accessor :name, :location, :description, :url

  @@all = []
  
  def self.new_from_index_page(venue)
    self.new(
      venue.css(".venue-name").text,
      venue.css(".venue-region").text.strip,
      venue.css(".venue-description").text.strip,
      "https://www.wedding-spot.com#{venue.css("a").attribute("href")}"
      )
    end
  
  def initialize(name=nil, location=nil, description=nil, url=nil)
    @name = name
    @location = location
    @description = description
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
  

