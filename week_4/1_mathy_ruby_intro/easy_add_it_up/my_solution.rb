# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?)
# total: the sum of the numbers in the array
# sentence_maker: A sentence from the array wit hthe first word capitalized and a period at the end.
# What are the steps needed to solve the problem?
# total
# define a variable to hold the sum
# for each element in the array
# add it to the total
# return the total
# 
# sentence_maker
# define a variable to hold the sentence 
# loop through the array of words
# if it is the first word in the sentence, capitalize the first letter and add it to the phrase
# otherwise add a space and the word to the sentence
# return the sentence plus a period at the end



# 2. Initial Solution
# def total( nums )
# 	sum = 0
# 	nums.each do |number|
# 		sum += number
# 	end
# 	return sum
# end

def sentence_maker( words ) 
	phrase = ""
	words.each do |word|
		if phrase.length > 0 then
			phrase += " " + word.to_s
		else
			phrase += word.to_s.capitalize
		end
	end
	return phrase + "."
end


# 3. Refactored Solution
def total( nums )
	return nums.inject(0) { |total, num| total + num }
end 


# Driver code from the problem
# total([1,2,3])      # => 6
# total([4.5, 0, -1]) # => 3.5
# total([-100, 100])  # => 0

# sentence_maker(["i", "want", "to", "go", "to", "the", "movies"]) # => "I want to go to the movies."


# 4. Reflection 
# These were fun exercises to do. Initialy I just tried to follow the pseudocode and adjust things
# to get the rspec tests to pass. I got to apply a new method, inject, which I picked up in
# another exercise this week. I liked how I could do the total function in one line that was 
# also easy to read.  I feel confident that I learned the compentenies of this exercise.

