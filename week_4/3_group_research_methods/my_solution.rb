# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
  source.select { |x| x.to_s.include? thing_to_find }
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
  source.select { |key, value| value.to_i == thing_to_find }.keys
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  source.each_with_index do |value, i|
    source[i] += thing_to_modify if value.kind_of?(Integer) 
  end
end

def my_hash_modification_method(source, thing_to_modify)
  source.each_pair do |(key,value)|
      source[key] += thing_to_modify if value.kind_of?(Integer)
  end
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort{|a,b| a.to_s<=>b.to_s}
end

def my_hash_sorting_method(source)
  source.sort{|a,b| a[0]<=>b[0]}
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.reject!{|element| element.to_s.include? thing_to_delete}
end

def my_hash_deletion_method(source, thing_to_delete)
  source.reject!{|key| key.to_s.include? thing_to_delete}
end

# Identify and describe the ruby method you implemented. 
# The #reject! method works on the elements of the enumerable object, 
# array or hash, and removes those elements for which the block 
# returns true.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}


# Reflect!
# I started by Googling ways to remove elements from arrays and hashes. I found mention of 3 methods: 
# slice, select and reject. I liked how with reject, I could directly remove elements and that it 
# worked for both arrays and hashes in the same way. I liked constructing the single line that did
# the removal, and how I could use it as is for both methods I had to construct. I do feel confident with
# the learning objectives and enjoyed this unit.


# 