class Restaurant
  attr_reader :name

  @@all = []

  #initializes a new restaurant instance with a name
  #and pushes the instance into a class variable array of all restaurants
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
    my_reviews = Review.all.select do |review|
      review.restaurant == self 
    end 
    if my_reviews == []
      return "There are currently no reviews for this restaurant."
    end 
    my_reviews 
  end 

  #provides unique array of all customers for a restaurant instance
  def customers 
    if reviews == "There are currently no reviews for this restaurant."
      return "No customers have reviewed this restaurant."
    end 
    my_customers = reviews.map do |review|
      review.customer 
    end 
    my_customers.uniq 
  end

  #provides the average star rating (rounded two decimal places) for 
  #a restaurant instance
  def average_star_rating 
    if customers == "No customers have reviewed this restaurant."
      return customers 
    end
    my_ratings = reviews.map do |review|
      review.rating
    end 
    (my_ratings.sum.to_f / my_ratings.count).round(2)
  end 

end
