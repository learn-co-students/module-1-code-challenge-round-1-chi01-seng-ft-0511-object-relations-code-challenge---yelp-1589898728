class Review

    attr_reader :customer, :restaurant, :rating

    @@all = []

    #initializes a new review instance with a customer instance, restaurant
    #instance, and rating and pushes the instance into a class variable 
    #array of all customers
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