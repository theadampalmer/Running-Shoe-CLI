class CLI
  
  def welcome
    puts '********************************************************************'.black.on_green
    puts '*******Welcome to the Unofficial Nike Running Shoe Selector!********'.black.on_green
    puts '********************************************************************'.black.on_green
    puts "\n      With this app, you will receive recommendations for the"
    puts "  top-rated running shoe for several different runner categories.\n"
    puts "\n   Need a great shoe for marathons?? How about for trailrunning?"
    puts "\n          What kind of running shoe are you looking for??\n"
  end

  def run
    self.welcome
    user_input = " "
    until user_input == "exit"
      puts "\n\nYou can say: everyday, marathon, speedwork, trailrunner, or exit.\n".green
      user_input = gets.chomp
      case user_input # case statements can be used in lieu of if/elsif and use 'case' and 'when' and 'else'
      when "everyday"
        get_shoes('https://www.nike.com/t/air-zoom-pegasus-37-mens-running-shoe-extra-wide-KLvDcj/BQ9646-103')
      when "marathon"
        get_shoes('https://www.nike.com/t/air-zoom-alphafly-next-mens-racing-shoe-2FN3N2/CI9925-100')
      when "speedwork"
        get_shoes('https://www.nike.com/t/zoom-fly-3-premium-mens-running-shoe-XhzpPH/AT8240-103')
      when "trailrunner"
        get_shoes('https://www.nike.com/t/air-zoom-terra-kiger-6-womens-trail-running-shoe-CnfDJ2/CJ0220-200')
      when "exit"
        puts "\nThanks for using Running Shoe Selector!\n           Have a great day!!".red
      end
    end
  end

  # 1. should scrape URL (Scraper.scrape_everyday) 2. create objects with data scraped 3. puts out the info
  def get_shoes(url)
    new_shoe = Shoe.find_or_create_shoe(url)
      self.display_shoe_details(new_shoe)
  end

  def display_shoe_details(new_shoe)
      puts "\n\n\n\n\nModel: ".colorize(:green) + new_shoe.model.to_s
      puts "\nPrice: ".colorize(:green) + new_shoe.price.to_s
      puts "\nDescription: ".colorize(:green) + new_shoe.description.to_s
  end
end 
