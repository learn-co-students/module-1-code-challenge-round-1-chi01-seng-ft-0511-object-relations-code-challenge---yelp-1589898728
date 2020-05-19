class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  #initializes a new customer instance with a given name and family name
  #and pushes the instance into a class variable array of all customers
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self 
  end

  #creates a customer's full name
  def full_name
    "#{given_name} #{family_name}"
  end

  #provides a list of all customer instances
  def self.all 
    @@all
  end 

  #provides all reviews written by a customer instance
  def reviews 
    my_reviews = Review.all.select do |review|
      review.customer == self 
    end 
    if my_reviews == []
      return "You haven't written any reviews!"
    end
      my_reviews  
  end 

  #provides a unique list of all restaurants visited by a customer instance
  def restaurants 
    if reviews == "You haven't written any reviews!"
      return reviews 
    end 
    my_restaurants = reviews.map do |review|
      review.restaurant 
    end 
    my_restaurants.uniq 
  end 

  #allows a customer instance to add a rating for a particular restaurant
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  #provides the number of reviews written by a given customer
  def num_reviews 
    reviews.count 
  end 

  #finds the first customer with a given full name
  def self.find_by_name(name)
    self.all.find do |customer| 
      customer.full_name == name 
    end 
  end 

  #provides a list of all customers with a given full name
  def self.find_all_by_given_name(name)
    self.all.select do |customer|
      customer.full_name == name 
    end 
  end 

end
