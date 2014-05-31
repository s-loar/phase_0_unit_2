# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The assert method is defined
# The passed block of code is executed in place of the key word 'yield'.
# if the block returns true, nothing happens.
# if it returns false, an error is raised.
# name is set to bettysue.
# assert is called with a block that will return true
# assert is called with a block that will return false and raise the error.

# 3. Copy your selected challenge here
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



# 4. Convert your driver test code from that challenge into Assert Statements
# check a valid card number
good_card = CreditCard.new(4408041234567893)
assert { good_card.check_card }

# check an invalid card number
bad_card = CreditCard.new(4408041234567892)
assert { bad_card.check_card }

# generate an ArgumentError
bad_card = CreditCard.new(440804123456789)

# two more examples from this weeks exercise
card_1 = CreditCard.new(1111111111111111)
assert { card_1.check_card }
card_2 = CreditCard.new(4408041234567893)
assert { card_2.check_card }


# 5. Reflection
# My strategy was to follow the instructions carefully and work through the exercise.
# I have seen yield before, so I knew what to expect. I had no question about this,
# and did not consult any resources. The objectives of this exercise were to convert
# our old driver code to this assert method, andI feel that I accomplished this.
# I enjoyed doing this, as it was not too challenging and it worked as I expected it to.
