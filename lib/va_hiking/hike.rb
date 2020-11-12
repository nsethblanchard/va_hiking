
class VaHiking::Hike

    @@all = []
    attr_accessor :name, :geoloc, :description
    
    def initialize(name, geoloc) #tack on a description?
        @name = name
        @geoloc = geoloc    
        @description = description  #tie into the listed description for each hike
        #should I also do the URL?
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