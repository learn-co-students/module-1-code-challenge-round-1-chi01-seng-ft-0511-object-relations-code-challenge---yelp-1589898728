class Review
attr_reader :customer, :restaruant
attr_accessor :rating


@@all = []

def initialize(restaruant, customer, rating)
    @restaruant = restaruant
    @customer = customer
    @rating = rating
end







  
end