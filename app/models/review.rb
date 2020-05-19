class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating
  
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

  def customer
    Review.all.select do |review|
      review.customer == self
    end
  end
  

end