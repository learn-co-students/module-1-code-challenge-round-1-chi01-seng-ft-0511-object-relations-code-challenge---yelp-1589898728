class Restaurant
    attr_reader :name
    attr_accessor :review

    @@all = []

    def initialize(name)
      @name = name
      @@all << self

    end

    def self.all
      @@all
    end

    def reviews
      Review.all.select do |review|
        review.restaurant == self
      end
    end

    def customers
      rest_rev = reviews.map do |review|
        review.customer 
      end
    end

    def average_star_rating
      ave_reviews = reviews.map.sum do |review|
        review.rating
      end
      ave_reviews / reviews.count
    end





end
