# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Michael Landon]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# an Array

# What is the output? (i.e. What should the code return?)
# a new array with the most frequent value

# What are the steps needed to solve the problem?
# define a method called mode that takes one argument, an array
# have a counter for the amount of times each element has appeared using a hash
# iterate through the array and for element of array, 
# assign it as a key in the counter hash and give its value 1 or +1
# return the key with the highest value

# 1. Initial Solution
def mode(arr)
  counter = Hash.new(0)
  arr.each{|key| counter[key] += 1}
  solution = []
  counter.select {|key, value| solution << key if value == counter.values.max}
  p solution
end

mode([1,1,2,3,3]) 



# 3. Refactored Solution





# 4. Reflection
# Coming into this challenge, I immediately thought 'Ok, array.max will give us the mode' but as usual
# it took more than just that. As my peer's mind kept rolling, I could only understand him and wish
# my mind thought the way his did. We took small steps and constantly kept running tests, adjusting
# our solution until it finally worked for us. I'm still getting comfortable using hashes so this was
# definitely a good challenge to see it's complexity and understand how to use it in a solution that 
# calls for an array.