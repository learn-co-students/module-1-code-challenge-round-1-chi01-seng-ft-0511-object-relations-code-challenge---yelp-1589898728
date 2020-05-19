class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Methods

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

  # Returns an array of the full names of whoever has reviewed this restaurant
  def reviewed_by_full_names
    self.reviews.map {|review| review.customer.full_name}
  end

  # Returns the restaurant with the most reviews recieved
  def self.most_reviewed
    self.all.max_by {|restaurant| restaurant.reviews.size}
  end

  # Returns the most common rating recieved by said restaurant
  # Method derived from https://stackoverflow.com/questions/412169/how-to-find-an-item-in-array-which-has-the-most-occurrences
  def most_common_rating
    review_ratings = self.reviews.map &:rating
    review_ratings.uniq.max_by {|rating| review_ratings.count(rating)}
  end


end
