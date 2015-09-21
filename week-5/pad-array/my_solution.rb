# Pad an Array

# I worked on this challenge [with: Paul Etscheit]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# an array

# What is the output? (i.e. What should the code return?)
# new array padded with the pad value up to the minimum size

# What are the steps needed to solve the problem?
# Steps:
# What are the steps needed to solve the problem?
# 1. Find the length of the array
# 2. Check if length of array equals the variable we pass
# 3. Check if we have a second variable
# 4. Calculate how many elements we have to add
# 5. Loop and push to array

# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
  	p array
  else
  	until array.length == min_size
  		array << value
  	end
      return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
    if min_size <= array.length
      p new_array
    else
      while new_array.length < min_size
  		  new_array << value
  	end
      return new_array
    end
end


# 3. Refactored Solution



# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# I think we could've broken them down into even smaller pieces or at least wrote them
# in a non-technical way.

# Once you had written your pseudocode, were you able to easily translate it into code? 
# What difficulties and successes did you have?
# It wasn't as easy to translate into code because I don't even think I fully understood
# the pseudocode but we knew what it was we wanted to do.

# Was your initial solution successful at passing the tests? If so, why do you think that is? 
# If not, what were the errors you encountered and what did you do to resolve them?
# The errors we kept encountering was for the non-destructive method. We ended up trying out
# .dup, .clone, and creating a new Array. The test would still show red. Finally, all it took 
# was printing out a new Array! So, I can't remember how many times we wrote the same code in
# different variations only to have needed one little tweak.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# I used the .dup method instead of Array.new when assigning a copy of the old array into
# the new one. I think this cleaned it up some.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our code is pretty readable. The new array is called new_array and all the 
# indentations are pretty much aligned.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods completely change an object and non-destructive methods print out a 
# new object with the modifications without affecting the original.