require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john_h = Customer.new("John", "Hamish")
billy_b = Customer.new("Billy", "Boyd")
kelsy_c = Customer.new("Kelsy", "Callahan")
binging_brunch = Restaurant.new("Binging Brunch")
eggs_n_toast = Restaurant.new("Eggs N' Toast")
bros_steakhouse = Restaurant.new("Bro's Steakhouse")
john_h_review = Review.new(john_h, binging_brunch, 4.5)
billy_b_review = Review.new(billy_b, bros_steakhouse, 3.5)
kelsy_c_review = Review.new(kelsy_c, binging_brunch, 5)
kelsy_c_review_two = Review.new(kelsy_c, eggs_n_toast,3)

john_h_review.rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line