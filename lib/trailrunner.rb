require_relative "./everyday.rb"

class Trailrunner < Everyday
    
    def self.all
        Scraper.scrape_trailrunner
    end
      
end