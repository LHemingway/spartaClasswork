function addTwo(num1, num2){
	return num1 + num2; 
}

function addThree(num1, num2, num3){
	return (num1 + num2 + num3); 
}

function multiplyTwo(num1, num2){
	return (num1 * num2); 
}

function reverseWord(str){
	return str.split('').reverse().join('');
}

function increaseByPercentage(num1, num2){
	var perc = (num2 / 100);
	var percof1 = (num1 * perc);
	return num1 + percof1;
}

function celciusToFahrenheit(calc){
	return (calc * 1.8) + 32;
}

function fahrenheitToCelcius(fahr){
	return (fahr - 32) / 1.8;
}

function stripVowels(str){
	return str.replace(/[aeiou]/ig, '');
}



// do not delete
runTests();