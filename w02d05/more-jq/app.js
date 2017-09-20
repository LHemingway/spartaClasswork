$(function() {

	// setTimeout(function(){
	// 	alert("1second")
	// },1000);

	// setInterval(function(){
	// 	$("ul").append($("<li></li>"));
	// },1000);

	// for (var i = 0; i < 16; i++) {
	// 	setTimeout(function(){
	// 		$("ul").append($("<li></li>"));
	// 	}, i * 1000);
	// }
	$("li").each(function(index, li){
		setTimeout(function(){
			//$(li).slideDown();
			$(li).fadeIn(index*30);
			$(li).slideUp(index*1500);
		}, index*500);
	})

});