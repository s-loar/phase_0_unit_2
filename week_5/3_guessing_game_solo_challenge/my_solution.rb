# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:initialize: the answer number
# Output:
# Steps:
# initialize:
# store the answer in an instance variable for later comparixon to the guesses
# define a variable solved that stores if the game has been solved and set it to false
# guess
# set the solved flag to false
# if the guess is greater than the answer, return :high
# if the guess is lower than the answer return :low
# if the guess is the same as the answer, return :correct and set the solved flag to true
# solved?
# return the solved flag value


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end
  
#   def guess(guess)
#   	@solved = false
#   	if guess > @answer
#   	  :high
#   	elsif guess < @answer
#   	  :low
#   	else
#   	  @solved = true
#   	  :correct
#   	end
#   end

#   def solved?
#   	@solved
#   end 

# end


# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def guess(guess)
  	@solved = false
  	return :high if guess > @answer
  	return :low if guess < @answer
  	@solved = true
  	:correct
  end

  def solved?
  	@solved
  end 

end



# 1. DRIVER TESTS GO BELOW THIS LINE
# game = GuessingGame.new(10)

# p game.solved? == false  # => false

# p game.guess(5) == :low # => :low
# p game.guess(20) == :high # => :high
# p game.solved? == false  # => false

# p game.guess(10) == :correct # => :correct
# p game.solved?  == true # => true



# 5. Reflection 
# My strategy on this was to read the exercise carefully, then write some high level pseudocode, then get some 
# simple structured solution working and finally to refactor it to something nicer. I did not have any question
# or seek any resources to work on this. I feel confident with the Learning Compentencies I was to know. I enjoyed
# converting the pseudocode to code. I find the pseudo code to be tedious, as I am wanting to write is as code
# like statements not as something anyone could understand.




