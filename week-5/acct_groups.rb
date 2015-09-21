# Input: A string (name)
# Output: Arrays in groups of 5 (accountability group)

# Steps: 
# 1. create a class
# 2. define initialize method
# 3. create a new array

# Add an new name to the list
# Input: a string (name)
# Output: a success message
# Steps: 
# 1. add name to array
# 2. print a success message with name

# Put 5 members in a group
# Input: array(list of names)
# Output: array broken down by 5 people in each
# Steps:
# 1. iterate through array 
# 2. cut of every 5th name

class Account

	def initialize
		@array = Array.new()
	end

	def add_name(name)
		@array << name
		p "#{name} has been added to the list."
	end

	def groups
		@array.each_slice(5) {|g| p g}
	end
	
end

ag = Account.new()
ag.add_name("Awilda Cantres")
ag.add_name("Marcel Galang")
ag.add_name("Ryan Lesson")
ag.add_name("Un Choi")
ag.add_name("Salim Rahimi")
ag.add_name("Eric Shou")
ag.add_name("Michael Landon")
ag.add_name("Samuel Frederick Purcell")
ag.add_name("Ian Lockwood")
ag.add_name("Miguel Angel Melendez")
ag.add_name("Shunqian Luo")
ag.add_name("Kristie Chow")
ag.add_name("Ricky Binhai Hu")
ag.groups


# What was the most interesting and most difficult part of this challenge?
# The most interesting part of the challenge for me was being able to use what I learned from my
# GPS this week and incorporating it into this challenge. This challenge was one that I had done
# previously with my old cohort but I had done it differently where I created an array and simply
# split it. This time around I felt comfortable enough to try using a class to add the contents 
# for an empty array and then split it into groups. 

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I think the psuedocode does work for me and I'm improving little by little. Sometimes I catch
# myself writing a quick non-detailed psuedocode just so I can get to the solution when I have
# so many different ideas.

# Was your approach for automating this task a good solution? What could have made it even better?
# I feel my approach was a good one. To make it even better I could have tried to randomize it or 
# make the groups group up evenly if a name gets deleted or even added a delete method.

# What data structure did you decide to store the accountability groups in and why?
# I decided to use an Array because I only wanted to store the names of the cohort members. Had I
# chosen to add an email for each name, I would've used a Hash.

# What did you learn in the process of refactoring your initial solution? Did you learn any 
# new Ruby methods?
# I think my solution was simple to begin with. I used the each_slice method however, to group the
# accountability groups which worked out well.

