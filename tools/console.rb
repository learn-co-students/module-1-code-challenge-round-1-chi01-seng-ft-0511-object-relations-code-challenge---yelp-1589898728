require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

### Customer INFO ###

dan = Customer.new("Dan", "Love")
tom = Customer.new("Tom", "Love")
pat = Customer.new("Pat", "Love")
maggie = Customer.new("Maggie", "Love")
connor = Customer.new("Connor", "Love")
dansr = Customer.new("Dan", "Love Sr.")

### Restaurant INFO ###

dimos = Restaurant.new("Dimos")
links = Restaurant.new("Links")
emporium = Restaurant.new("Emporium")
small_cheval = Restaurant.new("Small Cheval")
whisk = Restaurant.new("Whisk")

### Review INFO ###

review_one = Review.new(dan, dimos, 4)
review_two = Review.new(tom, dimos, 3)
review_three = Review.new(pat, links, 5)
review_four = Review.new(maggie, links, 3)
review_five = Review.new(connor, dimos, 4)
review_six = Review.new(dan, links, 4)
review_seven = Review.new(tom, whisk, 2)
review_eight = Review.new(dan, emporium, 5)
review_nine = Review.new(dan, dimos, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
