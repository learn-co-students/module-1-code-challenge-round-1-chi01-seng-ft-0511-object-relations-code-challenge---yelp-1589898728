require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john_h = Customer.new("John", "Hamish")
binging_brunch = Restaurant.new("Binging Brunch")
john_h_review = Review.new(john_h, binging_brunch, 4.5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line