# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================

p hash[:outer][:inner][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

p nested_data.fetch(:array).at(1).fetch(:hash)

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

 number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner|  inner + 5}
  else
     element + 5
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# def startup(names)
  
#   names.map! do |word|
    
#   if word.is_a?(String)
#     word + "ly"
    
#   elsif word.is_a?(Array)
#     startup(word)
#    end
#   end
# end
  

# p startup(startup_names)


#Reflection:

# What are some general rules you can apply to nested arrays?
# We can search for a specific element by index using brackets such as array[0][1] or the .at() method. 

# What are some ways you can iterate over nested arrays?
# We can iterate over nested arrays by using a method such as kind_of? or is_a? to check for arrays and 
# if true we can make those elements do something.

# Did you find any good new methods to implement or did you re-use one you were already
# familiar with? What was it and why did you decide that was a good option?
# We used .fetch for nested hashes and .at for nested arrays. This allowed us to search for 
# specific elements in these lists. Then to iterate, we decided to use .map and kind_of? which
# we both used before but not in this context. It made it easy for check if the elements
# in an array contained arrays. So, we were able to target the inner arrays that way.
