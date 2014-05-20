# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: An array of die labels
# Output: sides: the number of labels. Roll: a randon side
# Steps:
# First check that at least one die label is passed. 
# Build the die from the labels
# Define a method that will return the number of die labels (sides)
# Define a method that will return a random die label


# 3. Initial Solution
# class Die
#   def initialize(labels)
#   	raise ArgumentError.new("There must be at least 1 die label.") if labels.length < 1 
#   	@die = labels
#   end

#   def sides
#   	@die.length
#   end

#   def roll
#   	return (@die.length == 1 && @die[0]) || @die.sample
#   end
# end



# 4. Refactored Solution
class Die
  def initialize(labels)
  	raise ArgumentError.new("There must be at least 1 die label.") if labels.length < 1 
  	@die = labels
  end

  def sides
  	@die.length
  end

  def roll
  	return (@die.length == 1 && @die[0]) || @die.sample
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# p die.sides == 6 # still returns the number of sides, in this case 6
# result = die.roll  # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
# p ['A', 'B', 'C', 'D', 'E', 'F'].include? result
# p die2 = Die.new([]) # should raise an error



# 5. Reflection 
# My strategy was to take what I did from Exercise 1 and refactor it to this exercise. That worked well.
# I enjoyed this, as I was able to reapply what I learned from the first exercise. I feel that I have
# learned the Learning Compenticies.
