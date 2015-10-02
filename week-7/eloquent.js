// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var greeting = function(name){
	return "Hello, " + name + "!";
}

console.log(greeting("Awilda"));
//=> Hello, Awilda!



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (num=1; num <100; num++){
	if (num % 15 === 0){
		console.log("FizzBuzz");
	} else if (num % 3 === 0){
		console.log("Fizz");
	}else{
		console.log("Buzz");
	}
}
//=> 1, 2, Fizz, 4, Buzz...14, FizzBuzz...100


// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
	return Math.min(num1, num2);
}
console.log(min(0,10));
//=> 0
console.log(min(0,-10));
//=> -10



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Awilda",
	age: 25,
	favfoods: ["fries", "cereal", "chocolate"],
	quirk: "I have a collection of guitar picks I randomly find."
};
console.log(me.name);
//=> Awilda
console.log(me.age);
//=> 25 
console.log(me.favfoods);
//=> [ 'fries', 'cereal', 'chocolate' ]
console.log(me.favfoods[2]);
//=> chocolate
console.log(me.quirk);
// => I have a collection of guitar picks I randomly find.


