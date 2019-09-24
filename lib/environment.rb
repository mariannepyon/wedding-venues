require 'open-uri'
require 'nokogiri'
require 'pry'


require_relative "./wedding-venues/version"
require_relative "./wedding-venues/CLI"
require_relative "./wedding-venues/venue"

module WeddingVenues
    class Error < StandardError; end
    # Your code goes here...
end
