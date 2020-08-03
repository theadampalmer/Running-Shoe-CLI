require_relative "./everyday.rb"

class Speedwork < Everyday
    
    def self.all
        Scraper.scrape_speedwork
    end
      
end