class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map &:customer
  end

  def average_star_rating
    (self.reviews.sum &:rating) / self.reviews.count.to_f
  end

end
