class Review
  attr_reader :customer, :restaurant, :rating
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

  def customer_review(customer)
    #returns the customer object for that review
  end

  def restaurant_review(review)
    #returns the restaurant object for that given review
  end

end