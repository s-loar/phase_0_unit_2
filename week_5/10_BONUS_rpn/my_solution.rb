# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: integers and operands
# Output: the solution to the input
# Steps:
# put the input expression into an array
# for each element of the array
# if it is a digit, then apend it to our numbers array
# if it is an operand like +, - or * then pull the last 2
# numbers from our array and then put the sum, difference or 
# product back into the number array
# when the loop is finished, the number array should only have 
# one digit in it, which is the solution.


# 3. Initial Solution

# class RPNCalculator
#   def evaluate( expression )
#   	expression = expression.split(" ")
#   	numbers = []
#   	temp = []

#   	expression.each{ |element|
#   		if element.match(/\d+/)
#   			numbers << element.to_i
#   		elsif element == "+"
#   			temp =numbers.pop(2)
#   			numbers << temp[0] + temp[1]
#   		elsif element == "-"
#   			temp = numbers.pop(2)
#   			numbers << temp[0] - temp[1]
#   		else # multiply
#   			temp = numbers.pop(2)
#   			numbers << temp[0] * temp[1]
#   		end
#   	}

#   	return numbers[0]
#   end 
# end



# 4. Refactored Solution
class RPNCalculator
  def evaluate( expression )
  	expression = expression.split(" ")
  	numbers = []
  	temp = []

  	expression.each{ |element|
  		if element.match(/\d+/)
  			numbers << element.to_i
  		else 
  			temp = numbers.pop(2)
  			numbers << temp[0].send(element, temp[1])
  		end
  	}

  	return numbers[0]
  end 
end



# 1. DRIVER TESTS GO BELOW THIS LINE
# calc = RPNCalculator.new

# p calc.evaluate('1 2 +') == 3  # => 3
# p calc.evaluate('2 5 *') == 10  # => 10
# p calc.evaluate('50 20 -') == 30 # => 30
# p calc.evaluate('0') == 0  # => 0
# p calc.evaluate('-1') == -1  # => 0

# # The general rule is that 'A B op' is the same as 'A op B'
# # i.e., 5 4 - is 5 - 4.
# p calc.evaluate('70 10 4 + 5 * -') == 0  # => 0





# 5. Reflection 
# It was confusing how this worked and took some investigation as to how reverse polish calculators should
# function. So i wrote out the steps to be done in the pseudocode and then turned that into some simple code.
# Then I went looking for something that might help DRY the solution. I found #send() which would let me consolidate
# all the function lines into 2 lines of code. I fee that I understand the compentencies of this exercise.
# I enjoyed working on this, but since it says BONUS, it should be optional, not required.


