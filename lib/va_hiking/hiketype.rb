

class VaHiking::HikeType

@@all = []
attr_accessor :name

def initialize(name)
    @name = name
    save
end

def self.all
   VaHiking::Scraper.scrape_hike_type if @@all.empty?
   @@all
end

def save
    @@all << self
end








end