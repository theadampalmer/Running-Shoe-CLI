class Everyday
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        Scraper.scrape_everyday
    end

end