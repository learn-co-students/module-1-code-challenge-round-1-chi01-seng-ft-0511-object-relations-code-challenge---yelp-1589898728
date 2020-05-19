require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Clau", "Sarb")
c2 = Customer.new("Ion", "Mandea")
c3 = Customer.new("Coz", "Filip")

r1 = Restaurant.new("Blackbird")
r2 = Restaurant.new("Fancy")
r3 = Restaurant.new("Platessss")

rev1 = Review.new(c1, r1, 4)
rev2 = Review.new(c1, r3, 3)
rev3 = Review.new(c2, r2, 4)
rev4 = Review.new(c2, r1, 5)
rev5 = Review.new(c3, r3, 3)
rev6 = Review.new(c3, r2, 4)

binding.pry
#r2.cusomers => [#<Customer:0x00007fc274368858 @family_name="Mandea", @given_name="Ion">, #<Customer:0x00007fc2743687e0 @family_name="Filip", @given_name="Coz">]
#r1.reviews => works as well


#Customer.find_by_name("Coz Filip")
#<Customer:0x00007fa95907f558 @family_name="Filip", @given_name="Coz">

#Customer.find_all_by_given_name("Coz")
#works

#r1.average_star_rating => 4
#works





0 #leave this here to ensure binding.pry isn't the last line