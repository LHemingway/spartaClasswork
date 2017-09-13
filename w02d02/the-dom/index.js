	var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];


	function addListItem(value) {

	      var newItem = document.createElement("li");
	    newItem.innerHTML = value;
	    var list = document.getElementById('list')
	    list.appendChild(newItem);



	}

		addListItem("Luke");

	// write append loop here
	//Use a loop to create and append li elements for each name in the listItems array
		var selected = document.getElementsByTagName("li");
		for (var i = 0; i < listItems.length; i++) {
			addListItem(listItems[i]);
		}

	
	// write the class loop here
	//Set the class of every other list item to be "even"
	var listItems = document.getElementsByTagName("li");
	for (var i = 0; i < listItems.length; i += 2) {
	listItems[i].className = "even";
	}	

	//Set the count span to be the number of list items.
	var count = document.getElementById('count');
	count.innerHTML = listItems.length;


	// //GETTING AND CHANGING ELEMENTS IN THE DOM

	// var wrapperDiv = document.getElementById("wrapper");
	// console.log(wrapperDiv);
	// wrapperDiv.style.background = "blue";

	// var lis = document.getElementsByTagName("li"); //If it's got an S on it I.e. Elements it'll return and array.
	// console.log(lis);
	// lis[1].innerHTML = "Ch ch ch checking it out!";

	// var selected = document.querySelectorAll("li.selected");
	// for (var i = 0; i < selected.length; i++) {
	// 	selected[i].style.color = "orange";
	// }

	// //PUTTING BRAND NEW THINGS ON TO THE PAGE

	// var ptag = document.createElement("p");
	// ptag.innerHTML = "Brand New PTag";
	// document.body.appendChild(ptag);
