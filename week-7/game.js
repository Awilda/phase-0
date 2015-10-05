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

// var animals = ["rat", "snake", "horse", "pig", "dragon"];

// var randomPick = animals[Math.floor(Math.random() * animals.length)];

// var choice = function(input){
//         if (input === randomPick) {
//         return "You Win!";
//     }else {
//         return "You Lose!";
//     }
// };


// var fortune = function(choice){
//     if (choice === "rat"){
//             return "Fortune: A smile is your passport into the hearts of others.";
//     } else if (choice === "snake") {
//             return "Fortune: Your shoes will make you happy today.";
//     } else if (choice === "horse") { 
//             return "Fortune: If you refuse to accept anything but the best, you very often get it.";
//     } else if (choice === "pig") {
//             return "Fortune: A stranger, is a friend you have not spoken to yet.";
//     } else if (choice === "dragon") {
//             return "Fortune: You learn from your mistakes... You will learn a lot today.";
//     } else
//             return "Not a valid input";
//     };



// console.log(animals);
// console.log(randomPick);
// console.log(choice("rat"));
// console.log(fortune("rat"));






// Refactored Code


var animals = function(name,fortune){
    this.name = name;
    this.fortune = fortune;
};

var rat = new animals("rat", "A smile is your passport into the hearts of others.");

var snake = new animals("snake", "Your shoes will make you happy today.");

var horse = new animals("horse", "If you refuse to accept anything but the best, you very often get it.");

var pig = new animals("pig", "A stranger, is a friend you have not spoken to yet.");

var dragon = new animals("dragon", "You learn from your mistakes... You will learn a lot today.");


var arrayOfAnimals = [];
arrayOfAnimals.push(rat.name);
arrayOfAnimals.push(snake.name);
arrayOfAnimals.push(horse.name);
arrayOfAnimals.push(pig.name);
arrayOfAnimals.push(dragon.name);


var randomPick = arrayOfAnimals[Math.floor(Math.random() * arrayOfAnimals.length)];


function choice(input){
        if (input === randomPick && input === "rat") {
        return "You Win! " + "Here's your fortune: " + rat.fortune;
    } else if (input === randomPick && input === "snake") {
        return "You Win! " + "Here's your fortune: " + snake.fortune;
    } else if (input === randomPick && input === "horse") {
        return "You Win! " + "Here's your fortune: " + horse.fortune;
    } else if (input === randomPick && input === "pig") {
        return "You Win! " + "Here's your fortune: " + pig.fortune;
    } else if (input === randomPick && input === "dragon") {
        return "You Win! " + "Here's your fortune: " + dragon.fortune;   
    } else {
        return "You Lose!";
    }
}


console.log(arrayOfAnimals);
console.log(randomPick);
console.log(choice("rat"));




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