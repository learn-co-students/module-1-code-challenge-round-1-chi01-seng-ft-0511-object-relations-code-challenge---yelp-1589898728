class Restaurant
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end


  def reviews
    Review.all.select {|restaurant| review.restaurant == self}
  end


  def customers 
    reviews.map {|customer| restaurant.customer == self}
  end

  
  #def average_star_rating
  #end

  def self.all
    @@all
  end

end



