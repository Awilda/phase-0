# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of 
#  flavors that represent Pez so it's easy to start with a full Pez dispenser.

# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a 
#  dispenser so I can know how many are left.

# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a 
#  flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I 
#  know the order of the flavors coming up.


# Pseudocode:

# PezDispenser

# initialize
# Input: flavors (array)
# Output: new pez
# Steps:
# 1. define initialize that takes an array argument
# 2. make the input an instance variable

# pez_count
# Input: intance variable of input
# Output: pez quanity (integer)
# Steps:
# 1. find the quantity of input(array)

# see_all_pez
# Input: instance variable of input
# Output: the current flavors(array)
# Steps:
# 1. return input

# add_pez
# Input: a new flavor(string)
# Output: updated pez flavors (updated array)
# Steps:
# 1. add new input to instance variable of original input to end of flavors

# get_pez
# Input: instance variable of input (with updates if any)
# Output: first pez flavor
# Steps:
# 1. get first pez in the flavors 


# Initial Solution

# class PezDispenser

# 	def initialize(flavor)
# 		@flavor = flavor
# 	end

# 	def pez_count
# 		return @flavor.length
# 	end

# 	def see_all_pez
# 		p @flavor
# 	end

# 	def add_pez(new_pez)
# 		return @flavor.push(new_pez)
# 	end

# 	def get_pez
# 		return @flavor.shift
# 	end

# end



# Refactored Solution

class PezDispenser

	def initialize(flavor)
		@flavor = flavor
	end

	def pez_count
		count = @flavor.length
		return count
	end

	def see_all_pez
		p @flavor
	end

	def add_pez(new_pez)
		add = @flavor.push(new_pez)
		return add
	end

	def get_pez
		get = @flavor.shift
		return get
	end


end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection

# What concepts did you review or learn in this challenge?
# I reviewed Ruby classes and methods.  

# What is still confusing to you about Ruby?
# I'm just so happy that I understand Ruby better than I did months ago when I was
# with the previous cohort.

# What are you going to study to get more prepared for Phase 1?
# I'm going to practice my logic and get reading on Object oriented programming which,
# I saw challenges to and felt a bit intimidated by.