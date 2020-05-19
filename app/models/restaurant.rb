class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|r| r.restaurant  == self}
  end

  def customers
    (reviews.map {|r| r.customer}).uniq
  end

  def average_star_rating
    (reviews.map {|r| r.rating}).sum.to_f / reviews.count
  end

end
