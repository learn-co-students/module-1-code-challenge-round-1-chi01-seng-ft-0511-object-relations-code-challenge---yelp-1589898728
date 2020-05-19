require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# ******* CUSTOMER INSTANCES ********
emilio = Customer.new("Emilio", "Quintana")
john = Customer.new("John", "Smith")

# ******* RESTAURANT INSTANCES ********
purple_pig = Restaurant.new("Purple Pig")
giordanos = Restaurant.new("Giordanos")

# ******* REVIEW INSTANCES ********
Review.new(emilio, purple_pig, 10)
Review.new(john, purple_pig, 5)
Review.new(emilio, giordanos, 8)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line