
class VaHiking::CLI

    def call
        puts "\nWelcome to VA Hiking.  An application that helps you pick the perfect hike!".colorize(:light_green).underline
        hike_type
        get_location
        get_user_hike
        do_over_success?
    end

    def hike_type
        @location = VaHiking::GeoLoc.all   
    end

    def get_location
        puts "\nPlease pick the number for the type of hike you are most interested in today!".colorize(:light_blue)
        @location.each.with_index(1) do |loc, index| 
            puts "#{index.to_s.colorize(:light_blue)}. #{loc.name}"
        end
    end

    def get_user_hike
        chosen_hike = gets.strip.to_i
        if chosen_hike.between?(1, @location.length) 
            puts "Here are some hikes in the \"#{@location[chosen_hike-1].name}\" category.\n".colorize(:light_blue)
            get_nearest_hikes(chosen_hike)
        else
            puts  "Please enter only the number for the type of hike.".colorize(:light_blue)
            get_user_hike
        end
    end

    def get_nearest_hikes(chosen_hike)
        type = @location[chosen_hike-1]
        type.get_hike_names
        type.hike_names.each.with_index(1) do |hike, index|
            puts "\n#{index.to_s.colorize(:light_blue)}. #{hike.name}\n"
        end
    end

    def do_over_success?
        puts "Did you find the hike you were looking for (y/n)?".colorize(:light_blue)
        @answer = gets.chomp.downcase
        if @answer != "y" && @answer != "n"
            puts "Could you either enter only a \"y\" or a \"n\"?".colorize(:red)
            do_over_success?
        end
        
        if @answer == "y"
            puts "Thanks and enjoy your hike!".colorize(:light_blue)
        else 
            do_over_again
        end
    end
        
    def do_over_again
        if @answer == "n"
            puts "Would you like to try finding another hike (y/n)?".colorize(:light_blue)
            answer2 = gets.chomp.downcase
            if answer2 != "y" && answer2 != "n"
                puts "Could you either enter only a \"y\" or a \"n\"?".colorize(:red)
                do_over_again
            elsif answer2 == "y"
                call
            else answer2 == "n"
                puts "Thanks anyway!  Please let us know how we can improve our gem!".colorize(:light_blue)
            end
        end
    end
end