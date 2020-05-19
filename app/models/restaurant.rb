class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    #returns an array of all reviews for that restaurant
  end
  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
  end
end
