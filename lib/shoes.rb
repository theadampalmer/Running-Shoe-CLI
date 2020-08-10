class Everyday
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

class Marathon
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

class Speedwork
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

