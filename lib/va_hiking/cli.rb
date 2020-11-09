


class VaHiking::CLI

    def call
        puts 'Welcome to VA Hiking.  An application that helps you pick the perfect hike!'
        hike_type
        user_hike
        #get_nearest_hikes(hike_type)
        #hike_list
    end

    def hike_type
        #this will be scraped eventually
        @hike_type = ["Waterfall Hikes", "Hiking with Kids", "Bucket List Hikes", 
        "Summits with 360 Degree Views", "Appalachian Trail", 
        "Shenandoah National Park Hikes", "Blue Ridge Parkway Hikes", "Backpacking Trips"]
    end

    def user_hike
        @hike_type.each.with_index(1) do |month, index| 
            puts "#{index}. #{month}"
        end
    end



end