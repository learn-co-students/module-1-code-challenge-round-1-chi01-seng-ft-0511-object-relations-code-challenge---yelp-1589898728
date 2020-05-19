class Customer
  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, rating)
    customer.review = self 
  end 

  def restaurants
    restaurants_reviewed_by_customers = []
      Customer.select do |review|
        restaurant == self 
      end 
      restaurants_reviewed_by_customers.uniq
    end
  end 

  def num_reviews
    Review.all.select {|name| customer_instance.name == full_name}
  end 

  def self.find_by_name
    self.all.find {|name| customer_instance.name == full_name}
  end 

  def self.find_by_given_name
    self.all.select {|name| customer_instance.name == given_name}
  end 

end
