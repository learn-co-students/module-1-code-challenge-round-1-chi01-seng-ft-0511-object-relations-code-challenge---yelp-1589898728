class Review
  attr_accessor :customer, :restaurant, :rating
  @@all = []
  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end

  def restaurant_rating
    @rating
  def

  def self.all
    @@all
  end

end