# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a single number
# Output: sides gives the number of sides. roll gives a randon number from 1 up to the number of sides
# Steps:
# in initialize, raise an error if the number of sides is not at least 1
# set the number of sides to the passed sides
# Define a method, sides, that returns the number of sides
# Define a method, roll, that returns a random side number


# 3. Initial Solution
# class Die
#   def initialize(sides)
#   	raise ArgumentError.new("There must be at least 1 side.") if sides.to_i < 1 
#     @sides = sides
#   end
  
#   def sides
#     return @sides
#   end
  
#   def roll
#     return (1..@sides).to_a.sample unless @sides == 1
#     return @sides
#   end
# end



# 4. Refactored Solution
class Die
  def initialize(sides)
  	raise ArgumentError.new("There must be at least 1 side.") if sides < 1 
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return (@sides == 1 && 1) || [*1..@sides].sample
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
# die = Die.new(6)
# p die.sides == 6 # returns 6
# p die.roll < 7 # returns a random number between 1 and 6
# die2 = Die.new(1)
# p die2.sides == 1 # returns 1
# p die2.roll == 1 # returns 1
# die3 = Die.new(0) # throws an error


# 5. Reflection 
# I knew that I had the check the sides parameter first and raise the error if it was too small. So 
# I put the check first. Then I assigned the sides to an instance variable. For the method, I just 
# returned the sides instance variable. For the roll I wanted a simple way to generate a randon number
# in the range of sides, so I went with creating an array and using the #sample method we used last
# week. That was fine, unless the number of sides was 1. So I added the unless condition and then
# returned the instance viariable which would be 1. I refactored this to use a ternary operator
# because it just looked like that would be a good fit for this. I learned about Ruby ternary 
# operators from the site listed below.


# Resources
# http://invisibleblocks.com/2007/06/11/rubys-other-ternary-operator/