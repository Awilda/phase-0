# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. Pseudocode

# What is the input?
# array of integers (number scores)

# What is the output? (i.e. What should the code return?)
# string (letter grade)

# What are the steps needed to solve the problem?
# 1. find sum of array
# 2. divide sum by the length of array to find a range
# 3. assign letter grades to number grades


# 1. Initial Solution
def get_grade(array)
	array_sum = array.inject {|num, sum| (num + sum)}
	array_range = array_sum/array.length
	if array_range >= 90
		p "A"
	elsif array_range >= 80 && array_range < 90
		p "B"
	elsif array_range >= 70 && array_range < 80
		p "C"
	elsif array_range >= 60 && array_range < 70
		p "D"
	else
		p "F"
	end		
end


# 3. Refactored Solution



# 4. Reflection

# This challenge was a good practice for me. I think very simple so I hope th solution looks 
# simple and readable. My psuedocode wasn't as organized at first but I knew what I wanted to
# do. After solving, I was able to rewrite my psuedocode for practice. I hope to write 
# better psuedocode from the start. It was also a good practice logic-wise as well as with
# using enumerables.