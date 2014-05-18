# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? A number
# What is the output? (i.e. What should the code return?) a string where the input number has commas injected
# What are the steps needed to solve the problem?
# if the number is less than 1000 return the number
# else 
# declare an output string
# convert the number to a string and reverse it
# loop through each character of the string 
# appending it to the output string 
# and after every multiple of 3 characters add a comma
# reverse the output string
# return the output string 


# 2. Initial Solution
def separate_comma( number )
	if number < 10000 then
		return number.to_s
	end

	output = ""
	x = 0
	num = number.to_s.reverse

	num.each_char { |letter|
		output << letter
		x += 1
		if x % 3 == 0 && x < num.length then
			output << ","
		end
	}

	return output.reverse
end


# 3. Refactored Solution
# played with this a while and decided to go with the initial version

# driver code
# p separate_comma(1000000) # => "1,000,000"
# p separate_comma(100000) # => "100,000"
# p separate_comma(0)       # => "0"
# p separate_comma(100)     # => "100"


# 4. Reflection 
# The strategy was to pseudocode a long solution, then try and code that and then try to refactor to 
# something simpler. The easy part was that for any number less than 1000 just return the number as a string.
# For all other numbers... I knew it would be easier to reverse the number and work from that. Then loop 
# through each character of the string and after every 3rd character, insert a comma, unless that was the last
# character. Then return that string reversed. I looked at using things like splice and split but those
# lead down paths that were beyond my skill at this point. The new thing for this exercise was the for_each
# method of a string that allow you to walk the characters of a string and execute a block. I do feel that 
# I understand the learning compentencies. It was fun to implement the long solution, just wish I could have
# come up with a short solution


