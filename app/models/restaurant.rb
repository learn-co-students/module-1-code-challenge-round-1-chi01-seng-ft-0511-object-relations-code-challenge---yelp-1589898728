class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self 
  end

  def self.all
    @@all 
  end 

  def reviews 
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end 

  def customers 
    my_customers = reviews.map do |review|
      review.customer 
    end 
    my_customers.uniq 
  end

  def average_star_rating 
    my_ratings = reviews.map do |review|
      review.rating
    end 
    my_ratings.sum / my_ratings.count 
  end 

end
