

class VaHiking::GeoLoc

    @@all = []
    attr_accessor :name
    attr_writer :hike_names

    def initialize(name)
        @name = name
        @hike_names = []
        save
    end

    def self.all
        VaHiking::Scraper.scrape_hike_type if @@all.empty?
        @@all
    end

    def hike_names
        VaHiking::Scraper.scrape_hike_names(self) if @hike_names.empty?
        @hike_names
    end

    def save
        @@all << self
    end
end