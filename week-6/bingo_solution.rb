# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call(letter, num)
#     @letters = letter
#     @numbers = num

#     @bingo = ["B","I","N","G","O"]
#     @ran_num = (1..100).to_a.sample

    # bingo = []

# b = []
# b.push(@bingo_board[0][0])
# b.push(@bingo_board[1][0])
# b.push(@bingo_board[2][0])
# b.push(@bingo_board[3][0])
# b.push(@bingo_board[4][0])

# i = []
# i.push(@bingo_board[0][1])
# i.push(@bingo_board[1][1])
# i.push(@bingo_board[2][1])
# i.push(@bingo_board[3][1])
# i.push(@bingo_board[4][1])

# n = []
# n.push(@bingo_board[0][2])
# n.push(@bingo_board[1][2])
# n.push(@bingo_board[2][2])
# n.push(@bingo_board[3][2])
# n.push(@bingo_board[4][2])

# g = []
# g.push(@bingo_board[0][3])
# g.push(@bingo_board[1][3])
# g.push(@bingo_board[2][3])
# g.push(@bingo_board[3][3])
# g.push(@bingo_board[4][3])

# o = []
# o.push(@bingo_board[0][4])
# o.push(@bingo_board[1][4])
# o.push(@bingo_board[2][4])
# o.push(@bingo_board[3][4])
# o.push(@bingo_board[4][4])

# bingo << b
# bingo << i
# bingo << n
# bingo << g
# bingo << o
  # end

  # def check
  #   if @letters = "B" && @numbers == @ran_num
  #     ran_num.to_s.gsub("44", "X")
  #   end

# b.map do |x|
#     if b.include?(44)
#      p x.to_s.gsub("44", "X")
#      p 
#    end
#  end



      # if letter.include?("B")
      #   p "yay"
      # else
      #   p "boo"
        # p num.to_s.gsub("47", "X")
      # elsif letter.include?("I") && num.to_s.include?(numbers.to_s)
      #   p "It's working!!"
      # elsif letter.include?("N") && num.to_s.include?(numbers.to_s)
      #   p "It's working!!!"
      # elsif letter.include?("G") && num.to_s.include?(numbers.to_s)
      #   p "It's working!!!!"
      # elsif letter.include?("O") && num.to_s.include?(numbers.to_s)
      #   p "It's working!"
      # end

#  p layout = @bingo_board.each_slice(5) {|b,i,n,g,o| p b,i,n,g,o}
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    call
  end

  def call
    p bingo = ["B","I","N","G","O"]
    @ran_num = (1..100).to_a.sample
    p @ran_num
    check
  end

  def check
    @bingo_board.map do |element|
      if element.include?(@ran_num)
        element.map! {|x| x == @ran_num? "X": x}
      end
    end
      p layout = @bingo_board.each_slice(5) {|b,i,n,g,o| p b,i,n,g,o}
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
# p new_game.call
# p new_game.check


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding
# style?
# Pseudocoding this challenge was quite difficult for me. I wanted to keep it simple but I
# had a lot of trouble implementing it. I ended up trying so many different tactics to
# create a working code.

# What are the benefits of using a class for this challenge?
# I think a class for this challenge is ideal because it allowed me to break down the different
# actions within different methods.

# How can you access coordinates in a nested array?
# In one of my trial-and-error codes, I was able to access coordinates in a nested array by
# using several brackets with indexes or by using the .at() method.

# What methods did you use to access and modify the array?
# To access the array, I used map and include. To print out a nice board, I used the 
# each_slice method.

# How did you determine what should be an instance variable versus a local variable?
# I determined an instance variable versus a local variable by which one I would be taking
# over to another method. My instance variables would be used in another method within
# the class in order to create some kind of action.

# What do you feel is most improved in your refactored solution?
# I think being able to print out an "X" at all in place of the random number was an
# achievement. However, it doesn't stay until the next call which, is something I need 
# to work on.