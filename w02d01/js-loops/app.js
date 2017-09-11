
// FOR LOOPS

for (var i = 1; i < 21; i ++){
	console.log(i);
}

var trainers = ["ollie", "matt", "steve"];

for (var i = 0; i < trainers.length; i++){
	console.log(trainers[i]);
}


// WHILE LOOPS

var j = 0;

while(j < 5) {
	console.log("This loop has run " + j + " times");
	j++;
}	

//FOR IN LOOPS

var myObject = {
	a: 1,
	b: 2,
	c: 3
}
for (var key in myObject) {
	console.log(key);
	console.log(myObject[key])
}