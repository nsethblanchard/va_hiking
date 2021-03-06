
class VaHiking::Scraper
    
    def self.scrape_hike_type
        doc = Nokogiri::HTML(open("https://www.dcr.virginia.gov/state-parks/hiking"))
        #couldn't figure out how to not hardcode the [4] as the page html didn't have latchable identifying tags
        hike_type = doc.css("div#page").css("p")[4].children.each do |hike|
            name = hike.attr("href").gsub(".php", '')
            VaHiking::GeoLoc.new(name)
        end  
    end

    def self.scrape_hikes(geoloc)
        doc = Nokogiri::HTML(open("https://www.dcr.virginia.gov/state-parks/#{geoloc.name}"))
        hikes = doc.css("div#page").css("ul")[0].css("li").each do |h|
            hike = h.text
            VaHiking::Hike.new(hike, geoloc)
        end
    end
end