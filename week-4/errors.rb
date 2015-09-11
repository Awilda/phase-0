# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => "unexpected end-of-input, expecting keyword_end"
# 5. Where is the error in the code?
# => The error is after the string which, is missing an 'end'
# 6. Why did the interpreter give you this error?
# => The while loop needs an 'end'

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => syntax error
# 3. What additional information does the interpreter provide about this type of error?
# => "undefined local variable or method 'south_park' "
# 4. Where is the error in the code?
# => It's in the variable
# 5. Why did the interpreter give you this error?
# => The variable isn't defined

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => "undefined method 'cartman' "
# 4. Where is the error in the code?
# => It's in the method
# 5. Why did the interpreter give you this error?
# => The method isn't defined

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => "wrong number of arguments(1 for 0)"
# 4. Where is the error in the code?
# => It's in the method which needs one argument
# 5. Why did the interpreter give you this error?
# => The driver code has one argument and the method doesn't have any arguments

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 84
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => "wrong number of arguments(0 for 1)"
# 4. Where is the error in the code?
# => It's in the driver code
# 5. Why did the interpreter give you this error?
# => The method is being called with no arguments but requires one



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => "wrong number of arguments(1 for 2)"
# 4. Where is the error in the code?
# => It's in the driver code
# 5. Why did the interpreter give you this error?
# => The method is being called with one argument but requires two

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => "String can't be coerced into Fixnum"
# 4. Where is the error in the code?
# => The integer being multiplied by a string
# 5. Why did the interpreter give you this error?
# => You can't multiply 5 by a string

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => "divided by 0"
# 4. Where is the error in the code?
# => It's in the object assigned to the variable
# 5. Why did the interpreter give you this error?
# => An integer can't be divided by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => " 'require_relative': cannot load such file"
# 4. Where is the error in the code?
# => It's trying to load a file
# 5. Why did the interpreter give you this error?
# => There's no file of that name in the directory


# --- REFLECTION -------------------------------------------------------

#Which error was the most difficult to read?
#The require relative was the trickiest to read. I didn't know you could upload
#a file like that.

#How did you figure out what the issue with the error was?
#Once I read that that's the proper way to call a relative file, I understood that
#the file wouldn't upload because it's not in the directory.

#Were you able to determine why each error message happened based on the code? 
#Yes

#When you encounter errors in your future code, what process will you follow to help you debug?
#I will look at the error messages to find out the line of the error as well as type of error.
#Then I will make the necessary changes. I will make sure I test my errors once at a time.