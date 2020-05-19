class Review

  attr_accessor :rating
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end
  
  def self.all
    @@all
  end

  # returns the first review ever
  def self.first_review
    Review.all.first 
  end

end