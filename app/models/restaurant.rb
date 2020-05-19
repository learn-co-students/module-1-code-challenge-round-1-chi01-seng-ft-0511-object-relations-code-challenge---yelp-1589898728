require 'pry'
class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    unique_customers_review = reviews.map.uniq{|review| review.customer}
    unique_customers_review.map{|review| review.customer}
  end

  def average_star_rating
   summed_revs = reviews.map.sum {|review| review.rating}
   summed_revs.to_f / reviews.count
  end




end
