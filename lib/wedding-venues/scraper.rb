class WeddingVenues::Scraper

  def self.scrape_wedding_spot
      doc = Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
      doc.css(".venue-box-wrapper").each do |venue|
        name = venue.css("div.venue-box-content-with-budget .venue-name").text
        location = venue.css("div.venue-box-content-with-budget .venue-region").text.strip
        url = venue.css("a.venue-link").first.attribute("href").strip
  	  WeddingVenues::Venue.new(name, location, url)	
  end

  # def get_page
  #   Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
  # end

  # def scrape_venues_index
  #   self.get_page.css(".venue-box-content-with-budget")
  # end

  # def make_venues
  #   scrape_venues_index.each do |venue|
  #     WeddingVenues::Venue.new_from_index_page(venue)
  #   end
#end
end
end

