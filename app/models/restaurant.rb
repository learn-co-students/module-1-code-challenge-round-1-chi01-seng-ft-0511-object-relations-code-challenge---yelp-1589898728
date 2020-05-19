class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self 
  end

  #provides a list of all restaurant instances
  def self.all
    @@all 
  end 

  #provides all reviews for a restaurant instance
  def reviews 
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end 

  #provides unique array of all customers for a restaurant instance
  def customers 
    my_customers = reviews.map do |review|
      review.customer 
    end 
    my_customers.uniq 
  end

  #provides the average star rating (rounded two decimal places) for 
  #a restaurant instance
  def average_star_rating 
    my_ratings = reviews.map do |review|
      review.rating
    end 
    (my_ratings.sum.to_f / my_ratings.count).round(2)
  end 

end
