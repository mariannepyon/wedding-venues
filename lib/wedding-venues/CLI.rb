# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    WeddingVenues::Scraper.new.make_venues
    puts "Congratulations on your engagement! Welcome to Northern California wedding venues!"
    list_venues
    venue_information
    # puts ""
    # puts "Thank you! Have a great day!"
    # exit
  end
  
  def list_venues
    @venue = WeddingVenues::Venue.all
    @venue.each.with_index(1) do |venue, i|
      puts "#{i}. #{venue.name}"
    end
  end
  
  
  def venue_information
    puts ""
    puts "Which venue would you like more information on? Please write the number:"

    input = gets.strip.to_i
    
    venue = WeddingVenues::Venue.find(input.to_i)
    
    print_venue(venue)
    
    puts ""
    puts "Would you like to see another venue? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      list_venues
      venue_information
    elsif input == "n"
      puts ""
      puts "Thank you! Have a magical day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      venue_information
    end
  end

  def print_venue(venue)
      puts ""
      puts "----------- #{venue.name} ------------------"
      puts ""
      puts "Location:           #{venue.location}"
      puts "Website:            #{venue.url}"
      puts ""
    end
  end
