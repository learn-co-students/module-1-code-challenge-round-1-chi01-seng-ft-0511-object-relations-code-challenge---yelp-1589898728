class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    customers = Review.all.select{ |review.customer| review.restaurant == self}
    customers.uniq
  end

  def average_star_rating
    reviews = reviews()
    total = 0
    reviews.each do |review|
      total += review.rating
    end
    
    return total / reviews.length
    
  end
end
