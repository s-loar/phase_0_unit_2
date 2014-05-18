# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? an array of numbers or strings
# What is the output? (i.e. What should the code return?)
# an array of the highest occuring value(s) in the array 
# What are the steps needed to solve the problem?
# create a hash of the array values and the number of times it occurs in the array
# create an array of the keys with the highest value 
# sort that array
# return the array


# 2. Initial Solution
def mode( array )
  # create a hash of the arrays values as keys and their occurrence count as the value
  counts = array.inject({}) { |k, v| k[v] = array.count(v); k }

  # select the highest occurring hash's key value, or keys, if more than one
  final = counts.select { |k,v| v == counts.values.max }.keys

  # sort the selected values
  final.sort

  return final

end



# 3. Refactored Solution
# I just went with the initial solution


# driver code from the exercise
# p mode([1,2,3,3])         # => [3]
# p mode([4.5, 0, 0])       # => [0]
# p mode([1.5, -1, 1, 1.5]) # => [1.5]
# p mode([1,1,2,2])         # => [1,2]
# p mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# p mode(["who", "what", "where", "who"]) # => "who"

# 4. Reflection 
# This was a complex problem. I was glad that I could use the inject method that I learned this week.
# I really like the power of the functions that can take a block and apply it to an array to give 
# a result. I feel confident that I learned the compentenies of this exercise. 


