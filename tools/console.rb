require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

steven = Customer.new("Steven", "Kandow")
sue = Customer.new("Sue", "Kandow")
sarah = Customer.new("Sarah", "Muñoz")
meg = Customer.new("Meg", "Kandow")
marty = Customer.new("Marty", "McFly")
ellen = Customer.new("Ellen", "DeGeneres")
john_1 = Customer.new("John", "Smith")
john_2 = Customer.new("John", "Smith")

big_boy = Restaurant.new("Big Boy")
mcdonalds = Restaurant.new("McDonalds")
burger_king = Restaurant.new("Burger King")
olive_garden = Restaurant.new("Olive Garden")
applebees = Restaurant.new("Applebees")

review_1 = Review.new(steven, big_boy, 3)
review_2 = Review.new(sarah, big_boy, 3)
review_3 = Review.new(meg, big_boy, 1)
review_4 = Review.new(sue, mcdonalds, 2)
review_5 = Review.new(meg, burger_king, 5)
review_6 = Review.new(steven, big_boy, 4)
review_7 = Review.new(steven, applebees, 2)
review_8 = Review.new(steven, olive_garden, 5)
review_9 = Review.new(john_1, olive_garden, 3)
review_10 = Review.new(john_2, olive_garden, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line