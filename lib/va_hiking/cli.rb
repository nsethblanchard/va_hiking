


class VaHiking::CLI

    def call
        puts "\nWelcome to VA Hiking.  An application that helps you pick the perfect hike!"
        hike_type
        print_hike
        get_user_hike
        #get_nearest_hikes(hike_type)
        #hike_list
    end

    def hike_type
        #this will be scraped eventually
        @hike_type = ["Waterfall Hikes", "Hiking with Kids", "Bucket List Hikes", 
        "Summits with 360 Degree Views", "Appalachian Trail Hikes", 
        "Shenandoah National Park Hikes", "Blue Ridge Parkway Hikes", "Backpacking Trips"]
    end

    def print_hike
        puts "\nPlease pick the number for the hike you are most interested in today!"
        @hike_type.each.with_index(1) do |month, index| 
            puts "#{index}. #{month}"
        end
    end

    def get_user_hike
        chosen_hike = gets.strip.to_i
        if chosen_hike.between?(1, @hike_type.length) 
            puts "Here is some information about #{@hike_type[chosen_hike-1]}."
        else
            puts  "Please enter only the number for your hike."
            get_user_hike
        end
    end



end