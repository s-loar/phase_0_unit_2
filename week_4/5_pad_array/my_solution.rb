# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
#  New array lenght and optionally, the string to pad it with
# What is the output? (i.e. What should the code return?)
#  The pad! should modify the array to have the padded characters, the pad should return a copy that is padded
# What are the steps needed to solve the problem?
#  define a class Array
#  define a method pad! that does the following
#    It has parameters of new array length and optionally the string to pad the aray with
#    unless the new length is less than or equal to the array length
#      While the new length is greater than the array length
#        append the pad string to the array
#    return the array
#  define a method pad that does the following
#    It has parameters of new array length and optionally the string to pad the aray with
#    return a copy of the array result from pad!


# 2. Initial Solution
# class Array

# 	def pad!( newlength, padstring=nil )
# 		unless newlength <= self.length
# 			while newlength > self.length
# 				self << padstring
# 			end
# 		end
# 		self
# 	end

# 	def pad( newlength, padstring=nil )
# 		dup.pad!(newlength, padstring)
# 	end

# end

# 3. Refactored Solution
class Array

  def pad!( newlength, padstring=nil )
    while newlength > self.length
      self << padstring
    end
    self
  end

  def pad( newlength, padstring=nil )
    dup.pad!(newlength, padstring)
  end

end


# 4. Reflection 
# The first thing I had to do was find out what the ! and non-! functions were about. So I found and read the
# article listed below and that gave me some ideas on how to approach this. So my strategy was to write
# the functions with the parameters of the new array length and an optional parameter of the padding string.
# Then pad out the array until the new length was reached. Or just return the array if the length was too small. 
# The article also explained how the non-! function should be defiend in terms of the ! function, which I 
# applied here. So all of this has been new for me. It was rewarding to see it handle the rspec tests.



# Other Resource Used: 
# http://dablog.rubypal.com/2007/8/15/bang-methods-or-danger-will-rubyist