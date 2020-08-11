class Shoe
    attr_accessor :model, :price, :description, :url #also can be keys
    @@all = []

    def initialize(hash) 
        hash.each {|attribute, value| self.send("#{attribute}=", value)}
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_shoe_by_url(url)
        self.all.find {|shoe| shoe.url == url}
    end

    def self.find_or_create_shoe(url)
        self.find_shoe_by_url(url) || self.create_shoe_by_url(url)
    end

    def self.create_shoe_by_url(url)
        shoe_hash = Scraper.scrape_shoe(url)
        Shoe.new(shoe_hash)
    end
end

