class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end
# helper#
  def cust_reviews
    Review.all.select {|review| review.customer == self}
  end
  #helper#

  def restaurants
    uniq_restaurant_reviews = cust_reviews.map.uniq {|review| review.restaurant}
    uniq_restaurant_reviews.map{|review| review.restaurant}
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    cust_reviews.count
  end






  def self.all
    @@all 
  end

  def self.find_by_name(full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_given_name(given_name)
    self.all.select{|customer| customer.given_name == given_name}
  end



end
