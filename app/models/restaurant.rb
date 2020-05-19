class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    #returns an array of all reviews for that restaurant
    #made an array, but returned [false,false,false,]
    #working on how to change it but time ran out
    all_reviews = Review.all.map do |each_review|
      each_review.restaurant == @name
    end
    p all_reviews
  end
  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
  end
end
