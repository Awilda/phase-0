// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Guess the correct animal and get its fortune!
// Goals: Keep choosing an animal
// Characters: animals (rat, snake, horse, pig, dragon)
// Objects: animals, randomPick
// Functions: choice, fortune

// Pseudocode
// Input: animal
// Output: outcome + message
// Steps:
// 1. create an array of animals
// 2. randomize the animals
// 3. IF user's choice is the same as random animal, the message will be "You Win!" along
// with the animal's fortune.
// 4. ELSE the message will be "You Lose!" with no fortune.

// Initial Code

var animals = ["rat", "snake", "horse", "pig", "dragon"];

var randomPick = animals[Math.floor(Math.random() * animals.length)];

var choice = function(input){
        if (input === randomPick) {
        return "You Win!";
    }else {
        return "You Lose!";
    }
};

var fortune = function(choice){
    if (choice === "rat"){
            return "Fortune: A smile is your passport into the hearts of others.";
    } else if (choice === "snake") {
            return "Fortune: Your shoes will make you happy today.";
    } else if (choice === "horse") { 
            return "Fortune: If you refuse to accept anything but the best, you very often get it.";
    } else if (choice === "pig") {
            return "Fortune: A stranger, is a friend you have not spoken to yet.";
    } else if (choice === "dragon") {
            return "Fortune: You learn from your mistakes... You will learn a lot today.";
    } else
            return "Not a valid input";
    };

// var fortune = function(choice){
//     switch(choice){
//         case "rat": 
//             return "Fortune: A smile is your passport into the hearts of others.";
//         case "snake": 
//             return "Fortune: Your shoes will make you happy today.";
//         case "horse": 
//             return "Fortune: If you refuse to accept anything but the best, you very often get it.";
//         case "pig":
//             return "Fortune: A stranger, is a friend you have not spoken to yet.";
//         case "dragon":
//             return "Fortune: You learn from your mistakes... You will learn a lot today.";
//     }
// };



console.log(animals);
console.log(randomPick);
console.log(choice("rat"));
console.log(fortune("rat"));






// Refactored Code






// Reflection

// What was the most difficult part of this challenge?

// The most difficult part of the challenge was knowing how to use function correctly.
// Also, linking up the functions and objects were pretty tricky for me. I wanted to
// have the fortune print out on it's own when the game is won.



// What did you learn about creating objects and functions that interact with one another?

// I learned that the argument inside the argument is what gets called. However, it can
// also be empty.



// Did you learn about any new built-in methods you could use in your refactored solution? 
// If so, what were they and how do they work?

// No, because I'm still trying to access the fortune function so it could print with my
// choice outcome.



// How can you access and manipulate properties of objects?

// You can access properties of objects by using the variable name, by the dot notation
// and by using brackets.