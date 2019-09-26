# Our CLI Controller

class WeddingVenues::CLI
  
  def call
    WeddingVenues::Scraper.new.make_venues
    puts "Congratulations on your engagement!" 
    puts "Welcome to Northern California wedding venues!"
    list_venues
    venue_information
    another_venue
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
    if input.to_i > 0
      venue = WeddingVenues::Venue.find(input.to_i)
      print_venue(venue)
      venue_information
    elsif input.to_i > 35
      puts ""
      puts "I don't understand that answer."
      venue_information
    else
      puts ""
      puts "I don't understand that answer."
      venue_information
    end
  end
    
  def another_venue
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
      another_venue
    end
  end

  def print_venue(venue)
      puts ""
      puts "---------- #{venue.name} -----------"
      puts ""
      puts "Location:           #{venue.location}"
      puts "Website:            #{venue.url}"
      puts ""
      puts "---------------Description--------------"
      puts ""
      puts "#{venue.description}"
      puts ""
    another_venue
    end
  end
