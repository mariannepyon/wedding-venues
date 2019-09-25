class WeddingVenues::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.wedding-spot.com/wedding-venues/"))
  end

  def scrape_venues_index
     self.get_page.css(".venue-box-content-with-budget")
  end

  def make_venues
    scrape_venues_index.each do |venue|
      WeddingVenues::Venue.new_from_index_page(venue)
    end
  end
end