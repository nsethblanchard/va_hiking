
class VaHiking::CLI

    def call
        puts "\nWelcome to VA Hiking.  An application that helps you pick the perfect hike!".colorize(:light_green).underline
        hike_type
        print_hike
        get_user_hike
        #hike_list
    end

    def hike_type
        @location = VaHiking::GeoLoc.all   
    end

    def print_hike
        puts "\nPlease pick the number for the type of hike you are most interested in today!".colorize(:light_blue)
        @location.each.with_index(1) do |loc, index| 
            puts "#{index}. #{loc.name}"
        end
    end

    def get_user_hike
        chosen_hike = gets.strip.to_i
        if chosen_hike.between?(1, @location.length) 
            puts "Here are some hikes of the \"#{@location[chosen_hike-1].name}\" variety.\n".colorize(:light_blue)
            get_nearest_hikes(chosen_hike)
        else
            puts  "Please enter only the number for the type of hike."
            get_user_hike
        end
    end

    def get_nearest_hikes(chosen_hike)
        type = @location[chosen_hike-1]
        type.get_hike_names
        type.hike_names.each.with_index(1) do |hike, index|
            puts "#{index}. #{hike.name}"
        end
    end

end