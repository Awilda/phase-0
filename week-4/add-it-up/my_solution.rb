#Input: Objects within array
#Output: Sum of array
#Steps:
#1. define method, 'total' that takes in an array for an argument
#2. go through each element and add them up 


def total(list_of_numbers)
  list_of_numbers.reduce (:+)  
end


#Input: Array of words
#Output: A complete sentence
#Steps:
#1. define method, 'sentence_maker that calls one argument, 'list_of_words'
#2. join list_of_words
#3. convert list_of_words to a string
#4. capitalize first letter in string
#3. add a period at the end

def sentence_maker(list_of_words)
  list_of_words.join(" ").to_s.capitalize + (".")
end

#def sentence_maker(list_of_words)
	#x= list_of_words.join(" ")
	#x.to_s.capitalize + "."
#end