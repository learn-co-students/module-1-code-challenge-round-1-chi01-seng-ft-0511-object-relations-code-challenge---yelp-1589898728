class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    array_of_reviews = []
    Review.select do |review|
      restuarant == self 
    end 
    array_of_reviews
  end 

  #array_of_objects.each { |favor| favor.completed }

  def customers
    array_of_reviews = []
    Review.select do |review|
      customer == self 
    end 
    array_of_reviews.uniq
  end 

  def average_star_rating
    
  end 

end
