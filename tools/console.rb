require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



customer_a = Customer.new("John", "Smith")
customer_b = Customer.new("Jane", "Doe")
customer_c = Customer.new("George", "Jones")
customer_d = Customer.new("John", "King")
customer_e = Customer.new("Drake", "Johnson")

restaurant_a = Restaurant.new("Golden Dragon")
restaurant_b = Restaurant.new("The Rusty Spoon")
restaurant_c = Restaurant.new("Salad Bar Inc.")

review_a = Review.new(customer_a, restaurant_a, 5)
review_b = Review.new(customer_b, restaurant_a, 2)
review_c = Review.new(customer_c, restaurant_b, 3)
review_d = Review.new(customer_d, restaurant_c, 4)
review_e = Review.new(customer_e, restaurant_c, 1)
review_f = Review.new(customer_e, restaurant_a, 1)
review_g = Review.new(customer_e, restaurant_b, 5)
review_h = Review.new(customer_a, restaurant_b, 5)
review_h = Review.new(customer_b, restaurant_b, 5)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line