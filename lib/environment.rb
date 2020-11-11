require_relative "./va_hiking/version"
require_relative "./va_hiking/cli"
require_relative "./va_hiking/geoloc"
require_relative "./va_hiking/scraper"
require_relative "./va_hiking/hike"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'

module VaHiking
  class Error < StandardError; end
  # Your code goes here...
end
