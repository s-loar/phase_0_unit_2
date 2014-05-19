# U2.W4: Cipher Challenge


# I worked on this challenge with: Ryan Spencer.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? 
#             "g" => "c",   # The has makes it clearer what is going on, and you match on the letter you want to decode
#             "h" => "d",   # to get the translated letter, very simple
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? Iterating over the array of input characters
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#                          # we need to know when the character dow not match anything so we can just add it as is
#     cipher.each_key do |y| # What is #each_key doing here? this iterates over the hash keys
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#                  # This is comparing the letter input to the key of the hash if they match, the we will need to translate it
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? It breaks out of the hash loop since we found a match and no longer need to look for one
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? It takes the range 0 to 9 and makes an array from it.
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for? It is looking for characters that did not match any of the searches above
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. It is looking for numbers in the sentence
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
#   return decoded_sentence # What is this returning?  This is our decoded, readable sentence    
# end

# Your Refactored Solution
def north_korean_cipher(coded_message)
    alphabet = ('a'..'z').to_a 
    cipher_alphabet = alphabet.rotate(4)
    cipher = Hash[cipher_alphabet.zip(alphabet)] 
    spaces = ["@", "#", "$", "%", "^", "&", "*"] 
    
    decoded_sentence = "" 
    coded_message.downcase.each_char do |element|
      if cipher.include?(element) 
        decoded_sentence << cipher[element] 
      elsif spaces.include?(element) 
        decoded_sentence << " " 
      else 
        decoded_sentence << element 
      end
     end
  
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } if decoded_sentence.match(/\d+/) 
  
    return decoded_sentence 
end





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") ==  "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") =="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")  == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?" 


# Reflection
# We went through the code and added answers to the questions in the initial code. For the refactoring part,
# we wanted to make it DRYer wo we pulled out the parts to compare against so we were not making those so many times.
# We then iterated over each character of the encoded message looking for things to decode it. Finally
# we looked for numbers and if there were any, we divided them by 100 and then displayed our resulting 
# decoded string. Pairing on this made it easier, and found more shortcuts than either of us would 
# have come up with alone.


 