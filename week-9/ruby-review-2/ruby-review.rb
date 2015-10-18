# Reverse Words


# I worked on this challenge [with: CJ].
# This challenge took me [1] hours.

# Pseudocode



# Initial Solution
# def reverse_sentence(string)
#   individual = string.split
# #   individual.reverse
#   reversed_words = individual.map do |word|
#     word.reverse
#   end
  
#   reversed_words.join("")
  
# end

def reverse_words(string, *optional)
	string = string.split
	string.map! do |word|
    	word.reverse
  	end
  
  	p string.join(" ")
  
end



# Refactored Solution





# Reflection

# What concepts did you review in this challenge?
# I reviewed destructive methods, the usage of splat in an argument and psuedocoding.


# What is still confusing to you about Ruby?
# I feel comfortable with Ruby at the moment but I would like to continue challenging myself on
# ruby challenges that require a lot of logic.


# What are you going to study to get more prepared for Phase 1?
# I'm going to review the ruby docs to get my mind back into Ruby after all this JavaScript.