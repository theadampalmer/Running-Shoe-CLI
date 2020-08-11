class Shoe
    attr_accessor :model, :price, :description #also can be keys
    @@all = []

    def initialize(hash) 
        hash.each {|attribute, value| self.send("#{attribute}=", value)}
        @@all << self
    end

    def self.all
        @@all
    end

end
