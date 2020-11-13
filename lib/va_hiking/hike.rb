
class VaHiking::Hike

    @@all = []
    attr_accessor :name, :geoloc
    
    def initialize(name, geoloc)
        @name = name
        @geoloc = geoloc    
        add_to_geoloc
        save
    end
    
    def self.all
        @@all
    end

    def add_to_geoloc
        @geoloc.hike_names << self unless @geoloc.hike_names.include?(self)
    end

    def save
        @@all << self
    end
end