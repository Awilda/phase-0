=begin
Create a new list
Step: create empty hash

Add an item with a quantity to the list
Input: a string and a number
Output: a success message
Steps: 
1. add item with number to hash
2. print a success with number and hash that has been added

Remove an item from the list
Input: select an item
Output: a success message
Steps:
1. remove an item that's been selected
2. print a success with number and hash that has been removed

Update quantities for items in your list
Input: a new quantity of an item
Output: the item with the new quantity
Steps:
1. call an item from the hash
2. replace the quantity with a new one

Print the list (Consider how to make it look nice!)
=end

class Grocery

	def initialize
		@list = Hash.new()
	end

	def add_item(item, quantity)
		@list[item] = quantity
		p "You've added #{quantity} #{item}(s) to your grocery list!"
	end

	def remove_item(item, quantity)
		@list.delete("#{item}")
		p "You've removed #{quantity} #{item}(s) to your grocery list!"
	end

	def update_quantity(item, quantity)
		@list[item] = quantity
		p "Your new quantity for #{item} is now #{quantity}!"
	end
end

test = Grocery.new
test.add_item("Lemonade", 2)
test.add_item("Tomato", 3)
test.add_item("Onion", 1)
test.add_item("Ice Cream", 4)
test.remove_item("Lemonade", 2)
test.update_quantity("Ice Cream", 1)
p test

=begin
What did you learn about pseudocode from working on this challenge?
What are the tradeoffs of using Arrays and Hashes for this challenge?
What does a method return?
What kind of things can you pass into methods as arguments?
How can you pass information between methods?
What concepts were solidified in this challenge, and what concepts are still confusing?
=end
