class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def the_given_name
    "#{given_name}"
  end

  def the_family_name
    "#{family_name}"
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def num_reviews
    #Returns the total number of reviews that a customer has authored
    Reviews.self.map do |each_review|
      
  end

  def self.find_by_name(name)
  #given a string of a **full name**, returns the **first customer** whose full name matches
  end

  def self.find_all_by_given_name(name)
    #given a string of a given name, returns an **array** containing all customers with that given name
  end
  def self.all
    @@all
  end
end
