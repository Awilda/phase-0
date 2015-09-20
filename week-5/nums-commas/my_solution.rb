# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer

# What is the output? (i.e. What should the code return?)
#A comma-separated integer as a string

# What are the steps needed to solve the problem?
# Steps:
# 1. create a method that takes in one argument
# 2. create a new Array
# 3. reverse the numbers
# 4. break them into 3
# 5. reverse again (make sure each subarray element is reversed prior)
# 6. join and add a comma

# 1. Initial Solution


    def separate_comma(integer)
    array = []
    num = integer.to_s
    num.split("").reverse.each_slice(3) {|n| array << n.reverse}
    array.reverse.collect {|a| a.join}.join(",")
	end



# 2. Refactored Solution
#def separate_comma(num)
#    num.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
#end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I had worked on this challenge before so I knew that if I reversed the number I could break it down
# by three and then reverse it again. I was trying to avoid using the scan method where I could add a 
# comma after ever third digit. The method each_slice came in handy because slice just returned the number
# by its index. I just wish my mind was open to trying out more methods.

# Was your pseudocode effective in helping you build a successful initial solution?
# My psuedocode helped start my solution out but then I had to add a few more steps. 

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have
# implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I didn't feel I could refactor it any better. I tried to be as thorough as possible and I added a
# very short version of the solution just for show. However, I wouln't consider it a refactored 
# solution because you can't really make subtle changes to it.

# How did you initially iterate through the data structure?
# I first iterated through each of the slices and then again through each of the subarrays in order to
# join them.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I think the initial solution is as refactored as I can get. It seems pretty readable. I didn't want to
# chain methods to much and I wanted to keep it as DRY as possible. I feel if I kept assigning vairables
# it could've become to repetitive.

# Having solved this challenge before, my goal was to fix the problem I had with my old solution. I was
# able to add the commas, however the numbers didn't match up. For instance instead of 1,234,567,890 I
# would get 1,432,765,098. I didn't realize before that when I sliced up the reversed array, reversing
# it back would mix up the numbers. So, instead I figured I could reverse each element in the enumerable
# so when I reverse it back as a whole, the numbers make sense.