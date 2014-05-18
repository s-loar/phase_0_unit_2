# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: title of essay, name of person, place or topic, year, thesis statement, pronoun
# Output: [name of person place or topic] was an important ["person"/"place"/"topic"] in [year]. 
#         [["He"/"She"] did a lot.][I find [place/topic] facinating.]
#         I want to learn more about ["him"/"her"/place/topic].
#         [thesis statement] [first name/place/topic]'s contribution is important.
# Steps:
#  print out title line
#  print out blank line
#  print out first sentence
#  print out second sentence
#  print out third sentence
#  print out thesis
#  print out last sentence


# 3. Initial Solution
# def essay_writer( title, thing, year, thesis, type )
	
#   # title
#   puts title

#   # blank line
#   puts

#   # first sentence
#   print thing + " was an important "
#   if type == "male" or type == "female"
#     print "person"
#   elsif type =="place"
#     print "place"
#   else 
#     print "thing"
#   end
#   print " in " + year.to_s + ". "

#   # second sentence
#   if type == "male" or type == "female"
#     if type == "male" then
#   	  print "He"
#   	else 
#   	  print "She"
#   	end
#   	print " did a lot. "
#   else
#   	print "I find " + thing + " facinating. "
#   end   

#   # third sentence
#   print "I want to learn more about "
#   if type == "male" or type == "female"
#     if type == "male" then
#   	  print "him"
#   	else 
#   	  print "her"
#   	end
#   else
#   	print thing
#   end
#   print ". "

#   # thesis 
#   print thesis + " "

#   # last sentence
#   if type == "male" or type == "female"
#   	# break out the first name
#   	name = thing.split
#   	print name[0]
#   else
#   	print thing
#   end
#   puts "'s contribution is important."

# end



# 4. Refactored Solution
def essay_writer( title, thing, year, thesis, type )
  
  if type.thing == "male" or type.thing == "female"
  	word1 = type.single.capitalize + " did a lot. "
  	name = thing.split
  	word2 = name[0]
  else
  	word1 = "I find " + type.single + " facinating. "
  	word2 = thing
  end 

  # title
  puts title

  # blank line
  puts

  # first sentence
  print thing + " was an important " + type.thing + " in " + year.to_s + ". "

  # second sentence
  print word1

  # third sentence
  print "I want to learn more about " + type.object + ". "

  # thesis
  print thesis + " "

  # last sentence
  puts word2 + "'s contribution is important."

end

class EssayType
  attr_reader :thing, :single, :object

  def initialize( thing, single, object ) 
    @thing = thing;
    @single = single;
    @object = object;
  end
end
 
male = EssayType.new( "male", "he", "him" )
female = EssayType.new( "female", "she", "her" )
place = EssayType.new( "place", "it", "it" )
thing = EssayType.new( "thing", "it", "it" )


# 1. DRIVER TESTS GO BELOW THIS LINE
essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", male) 
essay_writer("The Windy City", "Chicago", 1870, "Chicago has played an important role in the history of the United States.", place)
essay_writer("Rails is Great", "Ruby on Rails", 2004, "Ruby on Rails, often simply Rails, is an open source web application framework which runs via the Ruby programming language.", thing)
essay_writer("First Female Recipient of the ACM's Turing Award", "Frances Allen", 2006, "The first female IBM Fellow in 1989. In 2006 she became the first female recipient of the ACM's Turing Award.", female)




# 5. Reflection 
# My strategy was to just break the essay into the sentences and then just build each one to work for each 
# type (person, place or thing). Once I got the output to be right for each type, I then pulled out the
# repeating constructs and refactored for that. I needed a short review of "if then" and "case" in Ruby so I 
# could decide which would be clearer. But I kept things simple so I dod not learn anything new. It was fun
# constructing the essay lines, but felt tedious exploring the various refactoring options. But I feel 
# confident in knowing the compentencies of this assignment.

