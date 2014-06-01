# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# initialize the BogggleBoard class with the passed board. Save the board for later use
# Method create_word - join the letters at the passed coordinates into a word
# Method get_row - return the letters of the passed row
# Method get_col - return the column of letters for a passed column
# Method get_cell - return the letter at a passed coordinate


# 3. Initial Solution
# class BoggleBoard

#   #your code here
#   def initialize( board )
#     @board = board
#   end

#   def create_word( *coords)
#     coords.map { |coord| @board[coord.first][coord.last]}.join("")
#   end

#   def get_row( row )
#     @board[row]
#   end

#   def get_col( col )
#     column = []
#     @board.each { |row| column << row[col] }
#     column
#   end

#   def get_cell( coord )
#     @board[coord.first][coord.last]
#   end

# end


# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]

# boggle_board = BoggleBoard.new(dice_grid)



# 4. Refactored Solution
class BoggleBoard

  #your code here
  def initialize( board )
    @board = board
  end

  def create_word( *coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end

  def get_row( row )
    @board[row]
  end

  def get_col( col )
    @board.map { |row| row[col] }
  end

  def get_cell( coord )
    @board[coord.first][coord.last]
  end

end


dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)



# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

# create driver test code to retrieve a value at a coordinate here:
assert { boggle_board.get_cell( [1,1] ) == "o" }
assert { boggle_board.get_cell( [3,3] ) == "e" }
assert { boggle_board.get_cell( [2,2] ) == "l" }

# implement tests for each of the methods here:
assert { boggle_board.create_word( [2,1], [1,1], [1,2], [0,3]) == "code" } #=> returns "code"  
assert { boggle_board.create_word( [0,1], [0,2], [1,2]) == "rad" } #=> creates what california slang word?
assert { boggle_board.create_word( [0,1], [1,1], [0,2], [1,2]) == "road" }
assert { boggle_board.create_word( [2,0], [3,1], [3,0]) == "eat" }

assert { boggle_board.get_row( 1 ) == ["i", "o", "d", "t"] } #=>  ["i", "o", "d", "t"]
assert { boggle_board.get_row( 0 ) == ["b", "r", "a", "e"] }
assert { boggle_board.get_row( 3 ) == ["t", "a", "k", "e"] }

assert { boggle_board.get_col( 1 ) == ["r", "o", "c", "a"] }
assert { boggle_board.get_col( 0 ) == ["b", "i", "e", "t"] }
assert { boggle_board.get_col( 3 ) == ["e", "t", "r", "e"] }


# 5. Reflection
# My strategy was to copy over the solution code and driver code from last week and modify this to solve the exercise.
# I added a new function, #get_cell, to get the value at a single coordinate, and refactored a previous method, #get_col.
# I also made changes to handle the initialize method and save the board into an instance variable.
# My driver code then needed to be refactored to use our assert method, and some new tests were needed for
# the new #get_cell method. I did not have any questions while working on this and I did not use any
# other resources. The biggest thing I figured out was that I should have used the map method in the #get_col
# method. Not sure why I did not see that last week. Tha cut out a few lines of code. I feel that I understand 
# the learning compentencies for this exercise. I enjoyed reworking last weeks exercise into a class. It was a little
# tedious redoing the driver code to use the assert method.


