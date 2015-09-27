#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

class NameData
	def name
		@name = "Awilda"
	end
end


class Greetings
	def initialize
		@namedata = NameData.new
	end

	def hello
		p "Hello, #{@namedata.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello



# Reflection

# What is a reader method?
# The reader method is equivalent to:
# def a_method
#    @a_method
# end
# It defines a method in which it's instance variable will most likely be used in another 
# method but cannot be changed.

# What is a writer method?
# A writer method is equivalent to:
# def a_method=(input)
#    @input = input
# end
# It defines a method with an input and can be changed somewere within its class.

# What do the attr methods do for you?
# Attr methods clear off the reader and writer methods allowing for one or two simple lines
# of code right after the class such as:
# att_accessor :input 
# This eliminates code for the reader and writer methods for an input.

# Should you always use an accessor to cover your bases? Why or Why not?
# You should only use an accessor if you a method's argument is meant to be changed.

# What is confusing to you about these methods?
# I don't think it's necessarily confusing. I just feel I could use more practice to get better
# acquainted with these methods.