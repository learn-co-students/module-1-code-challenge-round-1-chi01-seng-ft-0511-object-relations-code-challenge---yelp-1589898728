require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


ted = Customer.new("Ted", "Bundy")
john = Customer.new("John", "Gacy")
teddy = Customer.new("Ted", "Roosevelt")


ginos = Restaurant.new("Gino's")
olive_garden = Restaurant.new("Olive Garden")

olive_garden_review = Review.new(ted, olive_garden, 3)
olive_garden_review_two = Review.new(john, olive_garden, 1)
olive_garden_review_three = Review.new(john, olive_garden, 6)
ginos_review = Review.new(john, ginos, 4)








binding.pry
0 #leave this here to ensure binding.pry isn't the last line