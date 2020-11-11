


class VaHiking::CLI

    def call
        puts "\nWelcome to VA Hiking.  An application that helps you pick the perfect hike!"
        hike_type
        print_hike
        get_user_hike
        #get_nearest_hikes
        #hike_list
    end

    def hike_type
        @hike_type = VaHiking::HikeType.all
        
    end

    def print_hike
        puts "\nPlease pick the number for the hike you are most interested in today!"
        @hike_type.each.with_index(1) do |hike, index| 
            puts "#{index}. #{hike.name}"
        # binding.pry
        end
    end

    def get_user_hike
        chosen_hike = gets.strip.to_i
        if chosen_hike.between?(1, @hike_type.length) 
            puts "Here is some information about #{@hike_type[chosen_hike-1].name}.\n"
            get_nearest_hikes
        else
            puts  "Please enter only the number for your hike."
            get_user_hike
        end
    end

    def get_nearest_hikes
        puts "Getting there..."
        #possibly VaHiking::Hike or something and iterate over all of the possibles within that type
        #Start to parse out the available hikes within the type of hikes on website 
        #(start thinking about what to do with the types who don't have pretty data)
    end

end