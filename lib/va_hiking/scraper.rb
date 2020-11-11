
class VaHiking::Scraper
    
    def self.scrape_hike_type
        doc = Nokogiri::HTML(open("https://www.dcr.virginia.gov/state-parks/hiking"))
        #couldn't figure out how to not hardcode the [4] as the page html didn't have latchable identifying info
        hike_type = doc.css("div#page").css("p")[4].children.each do |hike|
            name = hike.attr("href").gsub(".php", '') #is removing the .php too much hard-coding?
            VaHiking::GeoLoc.new(name)
        end  
    end

    def self.scrape_hikes(geoloc)
        VaHiking::Hike.new("Molly's Knob Trail", geoloc)
        VaHiking::Hike.new("Mountainside Trail", geoloc)
    end
end