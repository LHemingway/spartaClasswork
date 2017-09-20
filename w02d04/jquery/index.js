$(function() {
    // Getting element from the dom
    var count = $("#count");
    // Creating new element to add to the DOM
    var li = $("<li>New thing</li>");
    // Add element to the DOM
    $("#list").append(li);

    var todos = ["Food shop", "Wash clothes", "Pay bills"];
    // Loop
    $(todos).each(function(index, todo) {
        console.log(todo);
    })

    // .html - changing the text on the page
    // $("#count").html("5");
    // // .css - changing the css on the page
    // $("#count").css("color", "red");

    // .html - changing the text on the page and css in 1 thing. Chaining bitches!
    $("#count").html("5").css("color", "red");

    // Don't have to loop through multiples of the same thing
    $("li").addClass("done");



    //Events!
    $("#myButton").click(function(){
    	console.log("button clicked!")
    });

    $("#myButton").on("click", function(){

    });
});