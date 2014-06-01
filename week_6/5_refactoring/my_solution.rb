# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
# class CreditCard
#   def initialize(card_num)
#     @card_num = card_num # store the credit card number
#     raise ArgumentError.new("Card must be 16 digits") if card_num.to_s.length != 16 # raise an error if the number does not have 16 digits
#   end
#   def check_card
#     @card_num = @card_num.to_s.split('').map(&:to_i) # create an array of credit card numbers as integers
#     16.times do |index| # for 16 times
#       @card_num[index] *= 2 if index % 2 != 0 # double every other number
#     end

#     @digits_to_sum = [] # set the array of digits to sum to an empty array
#     @card_num.each do |element| # for each credit card number, including the dobuled values
#       if element > 9 # if the number is greater than 10
#         @digits_to_sum << 1 + (element % 10) # Add 1 + the mod 10 of the digit to the numbers to sum
#       else
#         @digits_to_sum << element # otherwise just add the number to the numbers to sum
#       end
#     end

#     digits_sum = 0 # set the sum to 0
#     @digits_to_sum.each do |element| # for each number to sum
#       digits_sum += element # add that number to the sum
#     end

#     digits_sum % 10 == 0 # return if the sum is evenly divisible by 10 or not.
#   end
# end



# Refactored Solution
class CreditCard

  def initialize( card_num )
    raise ArgumentError.new("Card must be 16 digits") if card_num.to_s.length != 16 # First, raise an error if the number does not have 16 digits
    @card_num = card_num # store the credit card number
  end

  def check_card
  	@card_num = @card_num.to_s.split('').map(&:to_i) # create an array of credit card numbers as integers
  	digits_sum = 0 # initialize our sum

  	16.times do |index|
  		@card_num[index] = @card_num[index] *= 2 if index % 2 != 0 # double every other number
  		@card_num[index] = (@card_num[index] - 10) + 1 if @card_num[index] > 9 # if > 9 then subtract 10, and add one
  		digits_sum += @card_num[index] # add the number to the sum
  	end

  	(digits_sum % 10).zero? # return whether the sum is evenly divisible by 10

  end

end





# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

# check a valid card number
good_card = CreditCard.new(4408041234567893)
assert  { good_card.check_card == true }

# check an invalid card number
bad_card = CreditCard.new(4408041234567892)
assert { bad_card.check_card == false }

# generate an ArgumentError
bad_card = CreditCard.new(440804123456789)



# Reflection
# My strategy was to take one of the solutions I reviewed last week and work from that, trying to keep 
# true to the design of the original coder as possible when refactoring it. So I copied that code over
# and then added the comments to their code, so I could understand their approach. Then I copied it
# to the refactor section, and started to refactor it while trying to reuse variable names and some 
# looping constructs they had. The end result was a smaller set ot code that still works.
# I did not have any questions while working on this and did not consult any outside resources.
# I did not learn any new skills, but I felt like I kind of got inside the mind of the original programmer
# and tried to refactor it as they might. I feel that I understand the learning compentencies of this
# exercise. There were no tedious parts to this, and it was like a game, trying to keep their code
# as much as possible while refactoring it to be easier to understand.



