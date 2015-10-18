# I worked on this challenge [with: CJ].
# This challenge took me [1] hours.


# Pseudocode

# Input: Create method that takes array
# Output: the same array replaced with multiples of 3,5, 15 (or the words Fizzbuzz, Buzz, and Fuzz)
# If a regular number (other than 3, 5, or 15), will return that same number

# Steps

# Create method called super_fizzbuzz that takes one argument in an array of integers
# Iterate over array to find which elements are multiples of 3, 5, 15
# Replace those numbers with the words: Fizzbuzz, Buzz, and Fuzz


# Initial Solution

def super_fizzbuzz(array)
  array.map do |number|
    if number % 15 == 0
      number = "FizzBuzz"
    elsif number % 3 == 0
      number = "Fizz"  
    elsif number % 5 == 0
      number = "Buzz"
    else
      number = number
    end  
  end
end



# Refactored Solution






# Reflection

# What concepts did you review in this challenge?
# In this challenge, I was able to review iterating over a ruby array and using if statments.


# What is still confusing to you about Ruby?
# I feel comfortable with Ruby at the moment but I would like to continue challenging myself on
# ruby challenges that require a lot of logic.


# What are you going to study to get more prepared for Phase 1?
# I'm going to review the ruby docs to get my mind back into Ruby after all this JavaScript.