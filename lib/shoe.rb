class Shoe
    attr_accessor :model, :price, :description #also are keys
    @@all = []

    def initialize(hash) 
        hash.each {|attribute, value| self.send("#{attribute}=", value)}
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.find_shoe_by_model(model)
    #     nike_shoe = @@all.detect {|shoe| shoe.model == model}
    #     nike_shoe.price
    # end
end
