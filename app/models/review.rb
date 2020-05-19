class Review

    attr_reader :customer, :restaurant, :rating

    @@all = []
    
    def initialize(customer, restaurant, rating)
        @customer = customer 
        @restaurant = restaurant 
        @rating = rating
        
        @@all << self 
    end
    
    #provides a list of all review instances
    def self.all 
        @@all 
    end 
  
end