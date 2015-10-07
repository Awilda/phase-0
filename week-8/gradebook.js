/*
Gradebook from Names and Scores
I worked on this challenge [bwith: Kai Huang]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.


// var students = ["Joseph", "Susan", "William", "Elizabeth"]

// var scores = [ [80, 70, 70, 100],
//                [85, 80, 90, 90],
//                [75, 70, 80, 75],
//                [100, 90, 95, 85] ]

// var gradebook = {
  
// };
// gradebook["Joseph"]={};
// gradebook["Susan"]={};
// gradebook["William"]={};
// gradebook["Elizabeth"]={};

// gradebook["Joseph"].testScores=scores[0];
// gradebook["Susan"].testScores=scores[1];
// gradebook["William"].testScores=scores[2];
// gradebook["Elizabeth"].testScores=scores[3];

// gradebook.addScore=function(name, score){
//   gradebook[name].testScores.push(score);
 
// }
// gradebook.addScore("Susan", 80);

// gradebook.getAverage = function(name){
//   var averageScore = average(gradebook[name].testScores)
//   return averageScore;
// }

// function average(grades){
//   var sum = 0;
//     for(var i = 0; i < grades.length; i++){
//       sum = sum + grades[i]
//     }
//   return sum/grades.length;
// }

// console.log(gradebook.getAverage("Elizabeth"));





// __________________________________________
// Refactored Solution

var gradebook = {};

for (var i=0; i<students.length; i++){
  gradebook[students[i]]={};
  gradebook[students[i]].testScores=scores[i];  
};

gradebook.addScore=function(name, score){
  gradebook[name].testScores.push(score);
 
};

gradebook.getAverage = function(name){
  var averageScore = average(gradebook[name].testScores);
  return averageScore;
};

function average(grades){
  var sum = 0;
    for(var i = 0; i < grades.length; i++){
      sum = sum + grades[i];
    }
  return sum/grades.length;
}

console.log(gradebook.getAverage("Elizabeth"));







// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// I learned that variables can be formed inside functions which, can have another
// function assigned to that variable.



// How did you iterate over nested arrays in JavaScript?

// In order to grab information from the nested arrays, we created a function
// that takes in one array and uses a for loop to iterate through each element. This
// allowed us to add each element to each other and find its average. Then, we created another
// function that took in a name which has the other function assigned to it. I think  
// writing the property after the main object was very important when locating specific
// data.


// Were there any new methods you were able to incorporate? 
// If so, what were they and how did they work?

// Not methods, per se. But, the for loops are becomming clearer to me. Assigning properties 
// first then looping was truly helpful.







// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)