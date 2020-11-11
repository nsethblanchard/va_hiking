
class VaHiking::GeoLoc

    @@all = []
    attr_accessor :name, :hike_names
    

    def initialize(name)
        @name = name
        @hike_names = []
        save
    end

    def self.all
        VaHiking::Scraper.scrape_hike_type if @@all.empty?
        @@all
    end

    def get_hike_names
        VaHiking::Scraper.scrape_hikes(self) if @hike_names.empty?
    end

    def save
        @@all << self
    end
end