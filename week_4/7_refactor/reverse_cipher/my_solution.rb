# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a # create an array of letters of the alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # create a Hash of letters as keys and rotated by 4 places letters
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # characters to use to replace spaces
    
    original_sentence = sentence.downcase # put the sentence into lower case
    encoded_sentence = [] # create an empty array
    original_sentence.each_char do |element| # loop through each element of the sentence
      if cipher.include?(element) # if the element is in the alphabet Hash as a key
        encoded_sentence << cipher[element] # append to the encoded array the value of the Hash at the matching key
      elsif element == ' ' # if the element is a space
        encoded_sentence << spaces.sample # select a random space replacement character and add that to the encoded array
      else 
        encoded_sentence << element # otherwise just add the element
      end
     end
    
    return encoded_sentence.join # join the encoded array into a string and return that
end


# Questions:
# 1. What is the .to_a method doing?
#  It takes the range of a to z and converts the letters into an array
# 2. How does the rotate method work? What does it work on?
#  rotate takes an array and shifts the elements a set amount. In this case 4, which puts the
#  letter e as the first element and d as the last element.
# 3. What is `each_char` doing?
#  It is passing each character of the string into the block
# 4. What does `sample` do?
#  .sample selects a random element from the array spaces
# 5. Are there any other methods you want to understand better?
#  Array#zip - is joining the alphabet array with the rotated alphabet array into 26 2 element arrays
#  Hash[] is creating a hash from the alphabet arrays generated in the array#zip method
#  Hash#include?() - this searches the keys of the cipher Hash looking for a match
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
#  
# 7. Is this good code? What makes it good? What makes it bad?
#  I like this code as it makes it clear what the variable are from their names

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
#  No it does not, as the spaces return random characters from the substitution




# 5. Reflection 
# I like reading code that is beyond what I know. I learn new things that I may not have thought existed
# on my own. I read through the code then looked up new methods in the Ruby Docs and tried a few in IRB.
# There were several new methods that I learned like #zip, #sample, #include?, and each_char. I feel that 
# I have learned the compentencies of this unit. I really enjoyed reading the code and seeing the approach used.
