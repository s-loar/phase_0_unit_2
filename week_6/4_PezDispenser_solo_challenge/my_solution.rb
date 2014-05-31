# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# 2. Pseudocode
# create an initialize method that takes a list of flavors and stores them in the dispencer
# define a method pez_count that returns the number of items in the dispencer
# define a method see_all_pez that lists out the items in the dispencer
# define a method add_pez that adds a flavor to the dispencer
# define a method get_pez that takes a flavor from the dispencer and returns it


# 3. Initial Solution

# class PezDispenser

#   def initialize( flavors )
#     @flavors = flavors
#   end

#   def pez_count
#     @flavors.length
#   end

#   def see_all_pez
#     @flavors.each { |flavor| }
#   end

#   def add_pez( flavor )
#     @flavors << flavor
#   end

#   def get_pez
#     return @flavors.pop
#   end

# end



# 4. Refactored Solution
class PezDispenser

  def initialize( flavors )
    @flavors = flavors
  end

  def pez_count
    @flavors.length
  end

  def see_all_pez
    @flavors.each { |flavor| }
  end

  def add_pez( flavor )
    @flavors << flavor
  end

  def get_pez
    return @flavors.pop
  end

end



# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

super_mario.add_pez("purple")
assert {super_mario.pez_count == 10}
assert {super_mario.get_pez == "purple"}
assert {super_mario.pez_count == 9}


# 5. Reflection
# My strategy was to read the driver code provided and write pseudocode to match what it called for
# I then started to fill in the methods and run the tests. I then filled in the methods to make the
# tests pass. Finally I refactored a few tests to use the assert method. I did not have any questions
# but I had to look up %w to learn that it was making an array. I also learned that doing an #each loop
# with no block will return the split out items. I feel confident that I learned the objectives.
# I enjoyed this exercise, as if kinda flowed onto the page. Nothing i would call tedious.
