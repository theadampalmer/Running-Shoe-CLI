require_relative './everyday.rb'

class Marathon < Everyday
  def self.all
    Scraper.scrape_marathon
  end
end
