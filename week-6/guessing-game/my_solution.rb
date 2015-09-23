# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: integer (answer)
# Output: integer (answer)
# Steps:
# 1. initialize class with the method, 'initialize' with one argument, 'answer'
# 2. assign the input to a variable that can easily be passed within the class

# Input: integer (guess)
# Output: :high, :correct or :low
# Steps:
# 1. assign the input to a variable that can easily be passed within the class
# 2. IF guess is greater than the answer, return :high
# 3. IF guess is less than the answer, return :low
# 4. IF guess is equal to the answer, return :correct

# Input: :high, :correct or :low 
# Output: true or false
# Steps:
# 1. IF guess equals correct, return true
# 2. ELSE return false

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#   	@guess = guess
#   	if @guess > @answer
#   		return :high
#   	elsif @guess == @answer
#   		return :correct
#   	elsif @guess < @answer
#   		return :low
#   	end
#   end


#   def solved?
#   	if @guess == @answer
#   		return true
#   	else
#   		return false
#   	end
#   end
# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
  	end
  end


  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end
end




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a
# real-world object?
# Instance variables can be used in multiple methods within the class. Together they allow the methods
# to act a certain way when being called. You can use an instance variable from one method to create
# a different response in another method when called.

# When should you use instance variables? What do they do for you?
# You should use instance variables when working in a class. It allows you to create different 
# behaviors for different methods. You can also compare different instance methods with each other
# and return a result based on that.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what 
# did you struggle with?
# Flow control can be used when comparing to objects with each other. I used the IF statement which
# checks if the condition is true. I didn't have much trouble using it with this challenge but I did
# find myself double-checking that I was writing ecerything properly with the mix of symbols and
# instance variables in my code.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think strings could also be returned in this code. However, the symbols will always be the same
# object unlike strings which become new objects every time it's used. Because of this symbols are known
# to save memory space and time. According to the Rubyist textbook, two benefits of using symbols are:
# symbols being able to be processed quicker and symbols looking good(kind of like labels).