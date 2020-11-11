


class VaHiking::CLI

    def call
        puts "\nWelcome to VA Hiking.  An application that helps you pick the perfect hike!".colorize(:light_green).underline
        hike_type
        print_hike
        get_user_hike
        #get_nearest_hikes   -currently called within if statement of get_user_hike
        #hike_list
    end

    def hike_type
        @hike_type = VaHiking::GeoLoc.all
        
    end

    def print_hike
        puts "\nPlease pick the number for the type of hike you are most interested in today!".colorize(:light_blue)
        @hike_type.each.with_index(1) do |hike, index| 
            puts "#{index}. #{hike.name}"
        end
    end

    def get_user_hike
        chosen_hike = gets.strip.to_i
        if chosen_hike.between?(1, @hike_type.length) 
            puts "Here are some hikes of the \"#{@hike_type[chosen_hike-1].name}\" variety.\n".colorize(:light_blue)
            get_nearest_hikes(chosen_hike)
        else
            puts  "Please enter only the number for the type of hike."
            get_user_hike
        end
    end

    def get_nearest_hikes(chosen_hike)
        hike_type = @hike_type[chosen_hike-1]
        hikes = hike_type.hike_names
        

        #need to tie into VaHiking::HikeType.hike_names

        #her code is:
        #month = @months[chosen_month - 1]
        #events = month.events 


        #possibly VaHiking::Hike or something and iterate over all of the possibles within that type
        #Start to parse out the available hikes within the type of hikes on website 
        #(start thinking about what to do with the types who don't have pretty data)
    end

end