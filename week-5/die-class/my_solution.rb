# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: integer (sides)
# Output: new die object with 6 sides
# Steps:
# 1. raise argument error for input less than 1
# 2. create instance variable to pass throughout my class

# Input: integer (sides)
# Output: integer (sides)
# Steps:
# 1. Print out side from previous method

# Input: integer (sides)
# Output: random number between 1 and input
# Steps:
# 1. make a random range from 1 to the input

# 1. Initial Solution

# class Die
#   def initialize(sides)
#   	if sides < 1
#   		raise ArgumentError.new("Number must be greater than 1")
#   	end
#     @sides = sides
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     p rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("Number must be greater than 1")
  	end
    @sides = sides
  end

  def sides
    p @sides
  end

  def roll
    p rand(1..@sides)
  end
end





# 4. Reflection

# What is an ArgumentError and why would you use one?
# An ArgumentError is a type of error in which one would get when entering the wrong amount of
# arguments. It can also be used when the solution has a requirement for the argument such as in this
# solution where only numbers greater than 1 would pass through. If less than 1, the ArgumentError
# would appear.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing
# them?
# I used the random method where I was able to print a random number with a range from 1 to the input 
# integer.

# What is a Ruby class?
# By definition a class is "a blueprint from which individual objects are created." So, the way I
# think of a class is as a template.

# Why would you use a Ruby class?
# You can use a class to create a more real life function. For example, you can create an address
# book and add contacts with their information, delete contacts and update information. With
# classes you don't have to keep writing code to do this each time. Instead, you just call on it to
# do what you want it to do based on how its written.

# What is the difference between a local variable and an instance variable?
# Unlike the local variable that is most commonly written like this: local_variable, a instance variable
# is written like this: @instance_variable. The local variable is defined in a method and stays in
# that method while the instance variable can be used around different methods.

# Where can an instance variable be used?
# An instance variable can be used across different methods in a class.