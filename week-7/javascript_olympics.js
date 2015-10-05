 // JavaScript Olympics

// I paired [with: Zino] on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up
function bulkup(array){
  for(var i = 0; i < array.length; i++ ){
    array[i]["win"] = function(){
      console.log(this.name + " won the " + this.event);
    }
  }
}

var inputArray=[{name:"john",event:"tennis"},{name:"Richard",event:"soccer"}];

bulkup(inputArray);
inputArray[1]["win"]();



// Jumble your words
function reverseString(inputString){
  return inputString.split("").reverse().join("");
}

console.log(reverseString("Hello World"));




// 2,4,6,8
function even(number){
    return number % 2 == 0; 
}

var filered = [2, 4, 7, 6].filter(even);
console.log(filered.toString());



// "We built this city"
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

var Athlete =function(name, age, sport,quote){
  this.name=name;
  this.age=age;
  this.sport=sport;
  this.quote=quote;
};


// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// I learned about how constructors work, how nested data is written/called, and gained 
// a better understanding of how to use and call functions.



// What are constructor functions?

// The constructor functions are used to create different objects of one type. For 
// example we can store a different people's names along with their phone numbers under an
// object called phone book. Under this.name and this.phone we could keep adding new 
// people.



// How are constructors different from Ruby classes (in your research)?

// Constructors actually reminded me of 'self' in Ruby. In Ruby, all objects in classes
// belong to one class and work together to create a specific function. Constructors in
// JavaScript allow us to store and continue adding information based on its parameters.