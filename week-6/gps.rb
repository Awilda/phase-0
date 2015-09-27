# Your Names
# 1) Awilda
# 2) CJ

# We spent [2.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   serving_size_mod = order_quantity % serving_size

#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)



# Bakery Serving Size portion calculator. (without counter)

# def serving_size_calc(item_to_make, order_quantity)
#   baked_goods = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#      raise ArgumentError.new("#{item_to_make} is not a valid input") unless baked_goods.include?(item_to_make)

#   serving_size = baked_goods[item_to_make]
#   serving_size_mod = order_quantity % serving_size

# if serving_size_mod < 5
#     suggested_item = "cookie"
# end

#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}(s)"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}(s), you have #{serving_size_mod} leftover ingredients. Suggested baking items: #{serving_size_mod} #{suggested_item}(s)"
#   end

# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


# Bakery Serving Size portion calculator. (with counter)

def serving_size_calc(item_to_make, order_quantity)
  baked_goods = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 0

  baked_goods.each do |food, quantity|
    if food != item_to_make
      p error_counter += 1
    end
  end

  if error_counter >= 3
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = baked_goods[item_to_make]
  serving_size_mod = order_quantity % serving_size

if serving_size_mod < 5
    suggested_item = "cookie"
end

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}(s)"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}(s), you have #{serving_size_mod} leftover ingredients. Suggested baking items: #{serving_size_mod} #{suggested_item}(s)"
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


# Reflection

# What did you learn about making code readable by working on this challenge?
# To even try to figure out the original code, I had to look at the driver code and take it in the
# code step by step. One thing I learned that was really helpful was printing a line of code when I
# wasn't sure what it did. For example, we printed 'library[food]' in the original code and got 
# ["cookie => 1"] instead of just "cookie." This allowed us to disect each and every code that seemed
# unclear to us.

# Did you learn any new methods? What did you learn about them?
# We didn't use any method I was unfamiliar with for this challenge. The .inlcude method was really
# helpful in matching the item_to_make with the baked goods list.

# What did you learn about accessing data in hashes? 
# I learned that if you try to iterate through a hash, you have to be careful of which method is used.
# In the original code, the hash was iterated by each element and not as a key and value Therefore, 
# it always returned nil. To be more specific, a method that calls on the key and value would've worked
# better.

# What concepts were solidified when working through this challenge?
# I think I came out of this challenge understanding the counter variable a bit better. I also feel
# more comfortable in knowing how to cut down unnecessary code.