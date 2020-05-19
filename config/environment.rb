require 'bundler/setup'
Bundler.require
require_rel '../app'

sid = Customer.new("Sid", "Jags")
harry = Customer.new("Harry", "Burns")
david = Customer.new("David", "Beckam")
avery = Customer.new("Avery", "Russo")
james = Customer.new("James", "Brown")
dan = Customer.new("Dan", "Dawkin")
sage = Customer.new("Sage", "Man")


chipotle = Restaurant.new("Chipotle")
giordano = Restaurant.new("Giordano")
grand_lux = Restaurant.new("Grand Lux")


review1 = Review.new(sid, chipotle, 10)
review2 = Review.new(harry, chipotle, 7 )
review3 = Review.new(david, giordano, 3)
review4 = Review.new(avery, grand_lux, 4)
review5 = Review.new(james, chipotle, 4)
review6 = Review.new(sage, giordano, 5)
review7 = Review.new(sage, grand_lux, 8 )

