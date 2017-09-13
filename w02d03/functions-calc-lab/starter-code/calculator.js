var tryagain = true;

function add(value1, value2){
    return value1 + value2; 
}

function subtract(value1, value2){
    return value1 + value2; 
}

function divide(value1, value2){
    return value1 / value2; 
}

function multiply(value1, value2){
    return value1 * value2; 
}

function pow(value1, value2){
    return value1 ** value2; 
}

function sqroot(value1){
    return (Math.sqrt(value1));
}

function bigger(value1, value2){
    return (Math.max(value1, value2));
}

function biggest(value1, value2, value3){
    return (Math.max(value1, value2, value3));
}

//WORD FUNCTIONS
function noWords(string){
    return string.split(' ').length;
}

function longest(string){
    var words = string.split(' ');
      var longestLength = 0;
      var longestWord;
      for (var i=0;i<words.length;i++) {
        if (words[i].length > longestLength) {
           longestLength = words[i].length;
           longestWord = words[i];
        }
      }
      return longestWord;
    }

function prompteroo(){
    var choice = prompt('Choose your action (a)dd (s)ubtract (m)ultiply (d)ivide (p)ower s(q)uare root (b)iggest of 2 (B)iggest of 3 or go to the (w)ord calculator') || "a";
    if (choice === "w"){
        wordChoice = prompt("Enter (n)umber of words (l)ongest words")
        var string = prompt("Enter a sentence or word or whatever")
    } else {
        

    var value1 = parseFloat(prompt('enter first value')); // parseFloat to turn the string to a decimal number
    var value2;
    var value3;
    var wordChoice;

    if(choice !== "q"){
        value2 = parseFloat(prompt('enter the second value'));
    } 

    if (choice === "B"){
        value3 = parseFloat(prompt('enter the third value'));
    }

    }
    

    return {
        choice: choice, 
        wordChoice: wordChoice,
        value1: value1, 
        value2: value2,
        value3: value3,
        string: string
    };
}
// Bonus, keep looping until we say stop
while (tryagain) {

    // get the user inputs
    var inputs = prompteroo();
    
    // create an empty answer variable
    var answer = null;

    // check all the options and perform the actions
    if(inputs.choice === "a") {

        answer = add(inputs.value1, inputs.value2);

    } else if(inputs.choice === "s") {

        answer = subtract(inputs.value1, inputs.value2);

    } else if(inputs.choice === "m") {

        answer = multiply(inputs.value1, inputs.value2);

    } else if(inputs.choice === "d") {

        answer = divide(inputs.value1, inputs.value2);

    } else if(inputs.choice === "p") {

        answer = pow(inputs.value1, inputs.value2);

    } else if(inputs.choice === "q") {

        answer = sqroot(inputs.value1);

    }  else if(inputs.choice === "b") {

        answer = bigger(inputs.value1, inputs.value2);

    } else if(inputs.choice === "B") {

        answer = biggest(inputs.value1, inputs.value2, inputs.value3);
    
    ////Start of word functions

    } else if(inputs.wordChoice === "n") { 

        answer = noWords(inputs.string);
    
    } else if(inputs.wordChoice === "l") { 

        answer = longest(inputs.string);
    } 



    else { // didn't match any of the options

      alert('Sorry, that option was not valid');

    }

    // only print the answer if we calculated one
    if(answer) alert(answer);


    // should we continue. "" is falsey "q" is truthy
    tryagain = !prompt('Enter to continue, or (q)uit');

}

