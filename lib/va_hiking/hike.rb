

class VaHiking::Hike

    @@all = []
    attr_accessor :name, :geoloc 
    
    def initialize(name, geoloc)
        @name = name
        @geoloc = geoloc       
        save
    end
    
    def self.all
        @@all
    end

    def save
        @@all << self
    end
end