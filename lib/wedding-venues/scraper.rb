class WeddingVenues::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
  end

  def scrape_restaurants_index
     self.get_page.css("div#t1-50 li")
  end

  def make_venues
    scrape_venues_index.each do |r|
      WeddingVenues::Venue.new_from_index_page(r)
    end
  end
end