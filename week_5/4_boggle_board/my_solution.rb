# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Define a method create_word that takes a boogle board 
# and a variable number of coordinates and returnes the
# elements of those coordinates as a string

# Initial Solution
def create_word(board, *coords)
  coords.map { |coord| board[coord.first][coord.last]}.join("")
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code" #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad" #=> creates what california slang word?
puts create_word(boggle_board, [0,1], [1,1], [0,2], [1,2]) == "road"
puts create_word(boggle_board, [2,0], [3,1], [3,0]) == "eat"

# Reflection 
# This was rather simple, since the code was provided. Just needed to pseudocode it and provide tests.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# Define a method get_row that takes a boggle_board and a row
# and returns the passed row's values as an array

# Initial Solution
# def get_row(board, row)
# 	new_row = []
#   board[row].each { |cell| new_row << cell} 
# end


# Refactored Solution
def get_row(board, row)
    board[row]
end

# DRIVER TESTS GO BELOW THIS LINE
p get_row(boggle_board, 1) == ["i", "o", "d", "t"] #=>  ["i", "o", "d", "t"]
p get_row(boggle_board, 0) == ["b", "r", "a", "e"]
p get_row(boggle_board, 3) == ["t", "a", "k", "e"]

# Reflection 
# This was also easy in that you just have to return the row of the array.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Define a method get_column that takes a boggle_board and a column as parameters
# It will return the values of the wanted column as an array

# Initial Solution
# def get_col(board, col)
#   column = []
#   board.each { |row| 
#     column << row[col]
#   }
#   column
# end

# Refactored Solution
def get_col(board, col)
  column = []
  board.each { |row| column << row[col] }
  column
end
#end

# DRIVER TESTS GO BELOW THIS LINE
p get_col(boggle_board, 1) == ["r", "o", "c", "a"]
p get_col(boggle_board, 0) == ["b", "i", "e", "t"]
p get_col(boggle_board, 3) == ["e", "t", "r", "e"]

# Reflection 
# This was easy to loop through the rows and pull a column from each. So I did not
# learn anything new here. Perhaps it was just working with multidimensional arrays.

