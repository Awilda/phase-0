#Variables and Methods

#Mini Challenges:

#Full name greeting: Write a program that asks for a person's first name,
#then middle, then last. Finally, it should greet the person using their 
#full name.

puts "What's your first name?"
first_name = gets.chomp

puts "What's your middle name?"
middle_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "Hello, " + first_name + " " + middle_name + " " + last_name + "!"


#Bigger, better favorite number: Write a program that asks for a person's 
#favorite number. Have your program add 1 to the number, and then suggest 
#the result as a bigger and better number.

puts "What's your favorite number?"
fav_num = gets.chomp

better_num = fav_num.to_i + 1

puts "I think " + better_num.to_s + " is a bigger and better number!"


#How do you define a local variable?
#A local variable starts with a lowercase letter followed by underscores and letters.
#We then assign an object to the local variable that now represents that object.

#How do you define a method?
#The keyword, 'def' is put in front of the method we want to define followed by the 
#solution and 'end' to close it.

#What is the difference between a local variable and a method?
#A local variable represents an object and a method doesn't however, it can take arguments,
#which are objects.

#How do you run a ruby program from the command line?
#You can type 'irb' and put in a coding solution of you can input 'ruby filename.rb' to
#get an output.

#How do you run an RSpec file from the command line?
#In order to run an RSpec file, you type 'rspec rspec_filname.rb'

#What was confusing about this material? What made sense?
#Trying to explain a local variable and a method was a challenge for me. Although, I understand
#them in practice, I had to take the extra time to express my knowledge for this reflection. What
#makes sense is using the to_s method if I want to print a number within a string.

#Add a link to each exercise solution file as well so your peers can 
#easily look at your code.
#https://github.com/Awilda/phase-0/blob/master/week-4/address/my_solution.rb
#https://github.com/Awilda/phase-0/blob/master/week-4/define-method/my_solution.rb
#https://github.com/Awilda/phase-0/blob/master/week-4/math/my_solution.rb