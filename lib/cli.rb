require 'pry'
require 'colorize'
class CLI

    def run
        puts "********************************************************************".black.on_light_red
        puts "*******Welcome to the Unofficial Nike Running Shoe Selector!********".black.on_light_red
        puts "********************************************************************".black.on_light_red
        puts "\n      With this app, you will receive recommendations for the" 
        puts "  top-rated running shoe for several different runner catagories.\n" 
        puts "\n          What kind of running shoe are you looking for??\n" 
        puts "\nLooking for a great shoe for marathons?? How about for trailrunning?" 
        puts "\n You can say: everyday, marathon, speedwork, trailrunner, or exit.\n".green   
            user_input = ''
            until user_input == 'exit'
            # user_input = gets.chomp
        case user_input   #case statements can be used in lieu of if/elsif and use 'case' and 'when' and 'else'
            when 'everyday' # when user types in 'everyday', it puts everyday_running_shoes, etc.
                everyday_running_shoes
            when 'marathon'
                marathon_shoes
            when 'speedwork'
                speedwork_shoes
            when 'trailrunner'
                trailrunner_shoes
            when 'exit'
        puts "\n     Godspeed!\n Have a great day!!".red
        end
            end
    end

    def everyday_running_shoes
        Everyday.all do |shoes|
        end
    end

    def marathon_shoes
        Marathon.all do |shoes|
        end
    end

    def speedwork_shoes
        Speedwork.all do |shoes|
        end
    end

    def trailrunner_shoes
        Trailrunner.all do |shoes|
        end
    end
end
