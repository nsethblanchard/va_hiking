require_relative "./va_hiking/version"
require_relative "./va_hiking/cli"
require_relative "./va_hiking/hiketype"
require_relative "./va_hiking/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module VaHiking
  class Error < StandardError; end
  # Your code goes here...
end
