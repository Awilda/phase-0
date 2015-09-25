# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Jenna Anderson ].
# I spent [3] hours on this challenge.


# Pseudocode

#initialize
# Input: integer (16 digit card number)
# Output: integer or ArgumentError
# Steps:
# 1. new ArgumentError if card is not 16 digits
# 2. create instance variable for integer

#double
# Input: instance variable for integer
# Output: integer set with every other number doubled
# Steps:
# 1. reverse integer
# 2. convert into array
# 3. we iterate through each element to find which ones are in even slots
# 4. we double the even slot numbers
# 5. assign changes to double instance variable 

#sum
# Input: double instance variable
# Output: sum of all (including double digit elements)
# Steps: 
# 1. convert array contents to a string
# 2. split the string 
# 3. convert back to integer
# 4. add each number to get the total
# 5. assign changes to sum instance variable

#checkcard
# Input: sum instance variable
# Output: true or false
# Steps:
# 1. IF sum is divisible by 10 with no remainder, return true 
# 2. ELSE return false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   def initialize(num)
#     if num.to_s.length % 16 != 0
#       raise ArgumentError.new("Integer must be 16 digits")
#     end
#     @num_split = num.to_s.split(//).map(&:to_i)
#     double
#   end
  
#   def double
#     @odd_numbers = Array.new()
#     @even_numbers = Array.new()    
#     @reverse = @num_split.reverse
#     @odd_numbers << @reverse.values_at(1, 3, 5, 7, 9, 11, 13, 15)
#     @even_numbers << @reverse.values_at(0, 2, 4, 6, 8, 10, 12, 14)
#     @even_numbers << @odd_numbers.flatten.map! do |x|
#         (x * 2)
#     end   
#     @all_numbers = @even_numbers.flatten
#     sum
#   end
  
#   def sum
#     @all_numbers.collect! { |i| i.to_s }
#     @to_sum = @all_numbers.join.split(//).map(&:to_i)
#     @total = @to_sum.inject {|sum, num| sum + num}
#     check_card
#   end
  
  
#   def check_card
#     if @total % 10 == 0
#       p true
#     else
#       p false
#   end
#   end
  
# end



# Refactored Solution

class CreditCard
  
  def initialize(num)
    if num.to_s.length % 16 != 0
      raise ArgumentError.new("Integer must be 16 digits")
    end
    @num_split = num.to_s.split(//).map(&:to_i)
      double
  end
  
   def double
     @double = @num_split.map.with_index {|value, index| index % 2 == 1? value: value * 2 }
      sum
   end
  
  def sum
    @double.map! do |element|
      if element.kind_of?(Integer)
        element.to_s
        end
    end
    @double.collect! do |int|
      if int.to_s.length > 1
        int.to_s.split(//).map(&:to_i)
      else
        int.to_i
      end
      end
    @final_array = @double.flatten
    @sum = @final_array.inject {|num, sum| num + sum}
    check_card
   end
  
  def check_card
    if @sum % 10 == 0
      return true
    else
      return false
  end
  end
end





# Reflection

# What was the most difficult part of this challenge for you and your pair?
# I think the most difficult part of the challenge was trying to combine our thinking
# styles. Luckily, we were open to trying everything out so that made us work together 
# well. 

# What new methods did you find to help you when you refactored?
# The with_index method helped cut down a lot of code in order to specifically locate the
# odd located indexes.

# What concepts or learnings were you able to solidify in this challenge?
# I learned new concepts from my peer such as adding the next method name at the end of
# the previous method. This will call onto it next. This also allows for only one driver 
# code versus writing the class and the method everytime. I also learned more about which
# methods belong with which class. This is especially helpful when trying to locate a specific
# method in Ruby Docs.