# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Anthony Ecdwards






# Our Refactored Solution
# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Anthony Ecdwards
# 2)Steve Loar

# What is it doing: For the order comming in we are taking the total amount of 
# people and dividing that number by their favorite food. If that divides evenly 
# then we output the number of favorite food items that gives. Otherwise, we 
# start with the pies and try to find the most that evenly go into the order.
# Then do that for cakes and then the rest get cookies.

# Inputs: number of people, and favorite food item
# Outputs: if their favorite food is not pie, cake or cookie, raise an error
# Otherwise if their favorite food can be fullfiled output favorite food and quantity to make
# If their favorite food can not be divided evenly we output pies, cakes then cookies fullfill their order.   

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
    end
  end 
  
  # checks to see if their favorite food is in my_list
  if has_fave == false
    raise ArgumentError.new("You can't make that food") # raise an error if favorite food is not in list
  else
    fav_food_qty = my_list[fav_food]
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
      # if the number of people divide evenly by their favorite food portion then output string
    else 
      # calculate the number of pies
      pie_qty = num_of_people / my_list["pie"]
      num_of_people = num_of_people % my_list["pie"] 
      # calculate the number of cakes
      cake_qty = num_of_people / my_list["cake"]
      num_of_people = num_of_people % my_list["cake"]
      # calculate the number of cookies
      cookie_qty = num_of_people
      num_of_people = 0
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
      # portion out the number of pies, cakes and cookies, and print out a string with the order
    end
  end
end 
 

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
#p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
# p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
p bakery_num(42, "cake") == "You need to make 7 cake(s)." # change the above test to give cakes.




#  Reflection 
# This was a a complex exercise. Mostly in figureing out what was happening with the code as it originally was written.
# It wook a bit of going through the tests verbally to see that the while loop and associated if statements were not 
# adding anything and so were unnecessary. I think we acheived the exercise's goals. My favorite part of this was 
# the pairing which went really well, I feel. It made what would have been difficult and tedious go much smoother.


