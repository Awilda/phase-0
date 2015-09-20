# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.keep_if do |x| 
    x.to_s.include?(thing_to_find)
  end
end

def my_hash_finding_method(source, thing_to_find)
    source.keep_if {|k, v| k if v == thing_to_find}.keys
end
    

# Identify and describe the Ruby method(s) you implemented.
# keep_if = to keep the elements that passed the iteration
# include? = to include what's specified in the parenthesis
# .keys = to only print out the keys from the hash

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# keep_if = you can also use the select method as well, but keep_if sounds more like English
# so it can seem more readable. When using the keep_if method you can iterate over an array 
# or hash to go over each element and find the ones you want to keep.
#
# include? = this is a boolean expression that if true, I can pass some code to print out a 
# something. In my case, I iterated through my array to find which elements were true to the
# "thing_to_find" argument. Only those elements were returned.
#
# .keys = allows you to print only the keys without the values. After iterating through my hash
# I was still getting the full hash. By simply adding this method after my code block, I was
# able to get the results I needed.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned how to understand the Hash class a bit better and how to solve it better. I'm more
# comfortable with arrays but this exercise allowed me to play around with finding solutions 
# for hashes. I learned that, while there are similar methods for Arrays and Hashes, the way
# to go on solving them are different. As far as explaining my research to others, I hope
# my explanations are helpful and useful. The keys method is new to me and I hope to share
# that with someone who, like me, wasn't aware of that method.