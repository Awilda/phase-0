// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Marcel Galang
// This challenge took me [5+] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution

function office(){
var count = 0;

for (var voteCount in votes) {
   if (votes.hasOwnProperty(voteCount)) {
       var officers = votes[voteCount];
        for (var position in officers) {
          for (var i=0; i<1; i++){
            if (position=="president"){
              pres.push(officers[position]);
            }else if (position=="vicePresident"){
              vp.push(officers[position]);
            }else if (position=="secretary"){
              sec.push(officers[position]);
            }else if (position=="treasurer"){
              tres.push(officers[position]);
            }
            }
          }
       }
    
}




var pres = [];
var vp =[];
var sec =[];
var tres=[];

office();



var presCount = { };
for (var i=0, j = pres.length; i< j; i++) {
  presCount[pres[i]] = (presCount[pres[i]] || 0) +1;
}

var vpCount = { };
for (var i=0, j = vp.length; i< j; i++) {
  vpCount[vp[i]] = (vpCount[vp[i]] || 0) +1;
}

var secCount = { };
for (var i=0, j = sec.length; i< j; i++) {
  secCount[sec[i]] = (secCount[sec[i]] || 0) +1;
}

var tresCount = { };
for (var i=0, j = tres.length; i< j; i++) {
  tresCount[tres[i]] = (tresCount[tres[i]] || 0) +1;
}



var pKeysSorted = Object.keys(presCount).sort(function(a,b){return presCount[a]-presCount[b]})


var vpKeysSorted = Object.keys(vpCount).sort(function(a,b){return vpCount[a]-vpCount[b]})


// console.log(secCount)
var secKeysSorted = Object.keys(secCount).sort(function(a,b){return secCount[a]-secCount[b]})


var tresKeysSorted = Object.keys(tresCount).sort(function(a,b){return tresCount[a]-tresCount[b]})



voteCount.president=presCount
voteCount.vicePresident=vpCount
voteCount.secretary=secCount
voteCount.treasurer=tresCount

officers.president=pKeysSorted.pop()
officers.vicePresident=vpKeysSorted.pop()
officers.secretary=secKeysSorted.pop()
officers.treasurer=tresKeysSorted.pop()

console.log(voteCount)
console.log(officers)






// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// Using 'for...in' allows you to go one level in the nested objects.

// Were you able to find useful methods to help you with this?
// Unfortunately, I lost my refactored solution that I was almost finished with. Helpful
// methods were forEach, reduce and Math max.

// What concepts were solidified in the process of working through this challenge?
// I struggled with this challenge. I had my own ideas at first but then learned about
// new ways of tackling the challenge. I went around in circles that I needed to start again
// on a clean slate and by then I had already wasted so much time.


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)