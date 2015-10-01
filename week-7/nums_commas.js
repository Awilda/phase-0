// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



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
      count++
    };
      return arr.join("");
  };
};


var int = 100100100

console.log(commas(int));





// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection