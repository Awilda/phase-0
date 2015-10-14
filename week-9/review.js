var list = [];

function newList() {
  list.length = 0;
}

function add(input) {
  list.push(input);
}

function remove(takeOut) {
  list.pop(takeOut);
}

function update() {
  console.log("Grocery List: " + list);
};


add("bananas");
add("juice");
add("bread");
remove("bananas");
add("cereal");
update();
newList();
add("cranberries");
update();

// What concepts did you solidify in working on this challenge? (reviewing the passing of 
// information, objects, constructors, etc.)

// I was able to comfortable create functions with different behaviors which I was able to pass
// information through to update an array.


// What was the most difficult part of this challenge?
// I went right away to JSFiddle to do this challenge (which I'm still working on!). However,
// that meant incorporating JS into HTML which, I don't understand 100%. 

// Did an array or object make more sense to use and why?
// An array made more sense to me because I just wanted to add the item. But now that I think of it,
// if I manage to finish my JSfiddle version I will work on creating objects so I could add
// the quantity per item.