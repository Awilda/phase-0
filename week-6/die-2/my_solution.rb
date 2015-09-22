# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: array of strings 
# Steps:
# 1. Create a class, 'Die'
# 2. define the method, initialize
# 3. create an argument error if array is empty
# 4. assign the input to a variable that can be easily passed in my solution (instance variable)

# Input: array of strings
# Output: number of side of array
# Steps:
# 1. find the length of the array

# Input: array of strings
# Output: one random string from the array  
# Steps:
# 1. go through each element of the array
# 2. select one at random

# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.empty? 
#   		raise ArgumentError.new("Array cannot be empty")
#   	end
#   	@labels = labels
#   end

#   def sides
#   	p @labels.length
#   end

#   def roll
#   	p @labels.sample
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	if labels.empty? 
  		raise ArgumentError.new("Array cannot be empty")
  	end
  	@labels = labels
  end

  def sides
  	p @labels.length
  end

  def roll
  	p @labels.sample
  end
end






# Reflection

# What were the main differences between this die class and the last one you created in
# terms of implementation? Did you need to change much logic to get this to work?
# The main difference is that the previous challenge had integers and this one has strings.
# I did have to think a bit differently. Unlike the other challenge, this one didn't provide
# me with the number of sides so I had to find it in this one. 

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# It teaches me that each method plays an important role and how useful instance variables are.

# What new methods did you learn when working on this challenge, if any?
# I learned about the sample method. Initially, I was thinking about using shuffle somehow
# but as I scrolled through Ruby Docs I found sample! It automatically chooses a random
# element from the object.

# What concepts about classes were you able to solidify in this challenge?
# Honestly, understanding that each method in a class has an input and output has helped me with
# my psuedocode and implementing it into my coding. 