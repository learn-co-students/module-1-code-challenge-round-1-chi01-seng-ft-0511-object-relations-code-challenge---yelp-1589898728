class Review
  attr_reader :customer, :rating

  @@all = []

  def initialize(customer, rating)
    @customer = customer
    @rating = rating 
    @@all << self 
  end 

  def self.all
    @@all
  end 

  def customer
    

  end 

  def restaurant
    Review.restaurant
  end 
  
end