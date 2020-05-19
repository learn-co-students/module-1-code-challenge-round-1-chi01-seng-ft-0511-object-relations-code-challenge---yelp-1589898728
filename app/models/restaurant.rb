require 'pry'

class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review_instance|
      # binding.pry
      review_instance.restaurant.name == self.name
    end
  end

  def customers

    review_arr = reviews
    uniq_customer = review_arr.map do |review_instance|
      review_instance.customer.full_name
      # binding.pry
    end
    uniq_customer.uniq
    # binding.pry
  end

  def average_star_rating
    # Grab all the reviews into an array and then enumerate over that array to get all of the review scores and then take those scores and find the average of those scores... sorry ran out of time

    score_arr = reviews
    avg_score = score_arr.map do |review_instance|
      review_instance.rating
    end
    binding.pry
    a_score = avg_score.sum / avg_score.count
    a_score
  end

end
