# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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
  	p array
  else
  	until new_array.size == min_size
  		new_array << value
  	end
  	return new_array
  end
end




# 3. Refactored Solution



# 4. Reflection