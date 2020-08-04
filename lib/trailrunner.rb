class Trailrunner
    attr_accessor :name, :model, :price, :description
    @@all = []

    def initialize(hash)
        hash.each {|attribute, value| self.send("#{attribute}=", value)}
        @@all << self
    end

    def self.all
        @@all
    end

end