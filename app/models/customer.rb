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

  def restaurants
    Review.all.select{|review| review.customer == self}
  end

  def add_review(restaurant, rating)
     Review.new(self, restaurant, rating)
  end

  #def num_reviews
  #end

  def self.find_by_name(full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_given_name(first_name)
    self.all.select {|first_name| customer.firstname == first_name}
  end
  
  def self.all
    @@all
  end
end

