// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ian Lockwood.

// Pseudocode

// 0. Pseudocode
// 1. DEFINE a function called commas that takes a number as an argument
// 2. IF the number < 1000
// 3. RETURN IT
// 4. ELSE
// 5. SPLIT that number into an array of single-digit strings
// 6. INSERT a comma at every -4 idx position
// 7. STOP when the index position <= -(the length of the number)



// Initial Solution

function commas(integer) {
    if (integer < 1000) {
      return integer;
    }
    else {
      var idx = -3;
      var count = 0;
      var arr = integer.toString().split("");
      while (-idx < integer.toString().length + count) {
      arr.splice(idx, 0, ",");
      idx -= 4;
      count++;
    }
      return arr.join("");
  }
}

console.log(comma(123456789));





// Refactored Solution

var comma = function(integer){
    return integer.toLocaleString();
}

console.log(comma(123456789));


// Your Own Tests (OPTIONAL)



// Reflection

// What was it like to approach the problem from the perspective of JavaScript? 
// Did you approach the problem differently?

// After reading the DBC JavaScript lab material, my idea was to create a function for everything
// such as reversing. I also wanted to find a way to locate the indexes but I hadn't finished
// the textbook reading so I couldn't figure out how to make it possible. We did approach
// the problems in a more Ruby way.



// What did you learn about iterating over arrays in JavaScript?

// I learned that you need to add to the counter (counter++) in order to get the results
// of the iterated elements.



// What was different about solving this problem in JavaScript?

// I wasn't as familiar with many of the methods/properties as I've become with Ruby.



// What built-in methods did you find to incorporate in your refactored solution?

// The toLocaleString() method works wonders! It's already built in to insert the commas
// where needed.