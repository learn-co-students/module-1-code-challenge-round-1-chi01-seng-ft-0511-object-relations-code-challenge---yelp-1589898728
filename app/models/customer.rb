class Customer
  attr_accessor :given_name, :family_name
  #returns all of the customer
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    cust_review = reviews.map do |review|
      review.restaurant 
    end
    cust_review.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.count
  end

  def self.find_by_name(name)
    Customer.all.find do |cust|
      cust.full_name == name
    end
  end
  
  def self.find_all_by_given_name(name)
    Customer.all.find_all do |cust|
      cust.given_name == name
    end
  end






end
