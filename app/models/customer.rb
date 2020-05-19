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

  def restaurants
    Review.all.select do |reviews.restaurant| reviews.customer == self 
      reviews.restaurant.uniq
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def number_reviews
    review_count = 0
    Review.all.each do |reviews| 
      if reviews.customer == self
        review_count += 1
      end
    end
    return review_count
  end


  def self.find_by_name(name)
    full_name = name.split(" ")
    first_name = full_name[0]
    last_name = full_name[1]

    Customer.all.find{|customer| customer.given_name == first_name && customer.family_name == last_name}
  end

  def self.find_all_by_given_name(name)
    Customer.all.find{|customer| customer.given_name == name
  end


  
end



- `Customer.find_all_by_given_name(name)`
  - given a string of a given name, returns an **array** containing all customers with that given name