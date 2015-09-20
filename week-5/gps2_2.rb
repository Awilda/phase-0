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
I learned to be very thorough with my pseudocode. I had some trouble with the directions
and didn't realize that I was going to define 4 methods. In this case, I learned that writing
separate pseudocodes for each (aside from initialize) method would be the best option and would
prove to be quite effective.

What are the tradeoffs of using Arrays and Hashes for this challenge?
I decided to use Hashes for this challenge since I could make the item a key and the quantity a
value. It would make it easier to make the quantity changes when calling on the key of the hash.
If an Array had been used, I think every new item and quatity would probably be a subarray and I'd
have to modify within that.

What does a method return?
A method returns the the "do-something" code. In this case, the method takes in the arguments and
makes them act a certain way.

What kind of things can you pass into methods as arguments?
You can pass strings, arrays and numbers as arguments

How can you pass information between methods?
You can pass information bewtween methods using instance variables. It's written the same but with
a "@" sign in front such as: @instance_method. Multiple methods can also have the same arguments
which also allow you to you those objects within several methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
I was definitely able to learn more about Hashes in this challenge. I also learned that I didn't have
to assign the arguments to individual instance variables since I would already be assigning them to
the @list instance variable I created for an empty hash. Then, from there I could do the adjustments
and modifications required in the challenge. 
=end
