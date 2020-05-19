require 'pry'

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

    rest_reviewed = Review.all.select do |review_instance|
      # binding.pry
      review_instance.customer.full_name == self.full_name
    end
    uniq_reviewed = rest_reviewed.map do |review_instance|
      review_instance.restaurant
      # binding.pry
    end
    uniq_reviewed.uniq
    # binding.pry
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    amt_reviews = Review.all.select do |review_instance|
      review_instance.customer.full_name == self.full_name
    end
    amt_reviews.count
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.find do |customer_instance|
      # binding.pry
      customer_instance.full_name == full_name
    end
  end

  def self.find_all_by_given_name(given_name)
    self.all.find_all do |customer_instance|
      customer_instance.given_name == given_name
    end
  end

end
