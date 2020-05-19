require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


restaurant1 = Restaurant.new("Hellos")
restaurant2 = Restaurant.new("Tasties")
restaurant3 = Restaurant.new("free foods")


bob_jones = Customer.new("Bob", "Jones")

review1 = Review.new("Hellos", "Bob", 5)
review2 = Review.new("free foods", "Mark", 5)
review3 = Review.new("Tasties", "Lilly", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line