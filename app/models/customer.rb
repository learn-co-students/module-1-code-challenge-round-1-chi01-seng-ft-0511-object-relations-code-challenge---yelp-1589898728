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

  def self.all 
    @@all
  end 

  def reviews 
    Review.all.select do |review|
      review.customer == self 
    end 
  end 

  def restaurants 
    my_restaurants = reviews.map do |review|
      review.restaurant 
    end 
    my_restaurants.uniq 
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews 
    reviews.count 
  end 

  def self.find_by_name(name)
    self.all.find do |customer| 
      customer.full_name == name 
    end 
  end 

  def self.find_all_by_given_name(name)
    self.all.select do |customer|
      customer.full_name == name 
    end 
  end 

end
