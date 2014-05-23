# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a credit card number
# Output: and error if the number is not 16 digits, otherwise true if a valid number or false if invalid number
# Steps:
# initialize:
# Check that the card number is 16 digits long
# raise an error if it is not
# Save the number for checking later
# check_card:
# reverse the number so we can process it 
# for each digit of the reversed number
# If the digit position is an odd number replace the digit with 2 * the digit
# If the digit is >= 10, then subtract 10 from it and add 1.
# add the digit to the sum
# after processing all the digits, if the sum is evenly divisible by 10, the card number is valid
# otherwise it is invalid


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard

#   def initialize(card_number)
#   	if card_number.to_s.length != 16 then
#   	  # If the card number does not have 16 digits, then raise an error
#   	  raise ArgumentError.new("The Credit Card must have 16 digits.")
#   	end
#   	@card_number = card_number
#   end 

#   def check_card
#   	sum = 0
#   	digit_count = 0

#   	numbers = @card_number.to_s.reverse # We need to work from the end, so reverse the card number
  	
#   	# loop through each digit of the reversed card number
#   	numbers.each_char { |digit|
#   	  digit = digit.to_i  # convert it back to a number
  	  
#   	  # Double every odd numbered digit
#   	  if digit_count % 2 > 0
#   	  	digit *= 2
#   	  end

#   	  # if the digit is >= to 10 then add the parts of that number into a single number less than 10
#   	  # the largest doubled digit can only be 18 which is 9 * 2
#   	  if digit >= 10 
#   	  	digit = (digit - 10) + 1
#   	  end 

#   	  # add the digit to the sum
#   	  sum += digit
#   	  digit_count += 1 # increment the digit counter for the next loop
  	   
#   	}

#   	# determine if the sum is evenly divided by 10. If so the number is valid
# 	if (sum % 10) == 0
# 	  return true
# 	else
# 	  return false
# 	end

#   end
  
# end



# 4. Refactored Solution
class CreditCard

  def initialize(card_number)
  	if card_number.to_s.length != 16 then
  	  # If the card number does not have 16 digits, then raise an error
  	  raise ArgumentError.new("The credit card number must have 16 digits.")
  	end
  	@card_number = card_number
  end 

  def check_card
  	sum = 0
  	digit_count = 0

  	numbers = @card_number.to_s.reverse # We need to work from the end, so reverse the card number
  	
  	# loop through each digit of the reversed card number
  	numbers.each_char { |digit|
  	  digit = digit.to_i  # convert it back to a number
  	  
  	  # Double every odd numbered digit
  	  if digit_count.odd?
  	  	digit *= 2
  	  end

  	  # if the digit is >= to 10 then add the parts of that number into a single number less than 10
  	  # the largest doubled digit can only be 18 which is 9 * 2
  	  if digit >= 10 
  	  	digit = (digit - 10) + 1
  	  end 

  	  # add the digit to the sum
  	  sum += digit
  	  digit_count += 1 # increment the digit counter for the next loop
  	   
  	}

  	# determine if the sum is evenly divided by 10. If so the number is valid
  	(sum % 10).zero?

  end
  
end






# 1. DRIVER TESTS GO BELOW THIS LINE
# check a valid card number
#good_card = CreditCard.new(4408041234567893)
#p good_card.check_card == true

# check an invalid card number
#bad_card = CreditCard.new(4408041234567892)
#p bad_card.check_card == false 

# generate an ArgumentError
#bad_card = CreditCard.new(440804123456789)




# 5. Reflection 
# This was a complex exercise. It helped to read through the wiki page, and spell out in pseudocode what 
# needed to happen first. That approach worked well, but it took a lot of time and I only wrote small chunks of code 
# with lots of print statements that are now gone. So the algorithm was the biggest new thing to learn.
# In refactoring, I looked for shortcuts like #odd? and #zero? to make the code easier to read.


