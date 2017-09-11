var choice = prompt("calc, BMI or Mort?")
    if (choice === "calc"){
         var value1 = parseInt(prompt('enter first value')); 
    var value2 = parseInt(prompt('enter the second value'));
    var choice = prompt('Choose your action (a)dd (s)ubtract (m)ultiply (d)ivide or pow / root') || "a";

 

    switch (choice) {
        case "s":
            console.log(value1 - value2)
            break;
        case "m":
            console.log(value1 * value2)
            break;
        case "d":
            console.log(value1 / value2)
            break;
        case "pow":
            console.log(value1 ** value2)
            break;
        case "root":
            console.log(Math.sqrt(value1))
            break;
        default: 
            console.log(value1 + value2)
  


    }
} else if (choice === "BMI"){

    var weight = parseInt(prompt("what is your weight? (Kg)?"));
    var height = parseInt(prompt("how tall are you? (cm)"));

    var bmi = weight/height;

    if (bmi < 18.5){
        console.log ("Underweight")
           }else if
           (bmi < 24.9){
               console.log("Normal Weight")
           } else if
           (bmi < 29.9){
               console.log("Over weight")
           }else{ 
               console.log("Obese!!!!")
           }

} else if (choice === "Mort") {
    var Money = parseInt(prompt("How much are you borrowing? (£)"));
    var Interest = parseFloat(prompt("What is the interest rate? (%)"));
    var Years = parseInt(prompt("Over how many years?"));

    var SumInt = (1 +(Interest / 100));
    var MonXInt = (Money * SumInt ** Years);
    //var Mortgage = (MonXInt ** Years)
    console.log(MonXInt);

// var    Mortgage = ((Money * (1 + (Interest/100)))**Years)
//     console.log(Mortgage)
} else {
    
}