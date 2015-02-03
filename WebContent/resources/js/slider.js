$(document).ready(
	$(".slider-toggle").click(function(){
		if($(this).css("margin-left") == "0px") {
			$('.slider-toggle').animate({"margin-left": '-=180'});
			$('.sidebar-search').animate({"margin-left": '-=200'});
		} else {
			$('.slider-toggle').animate({"margin-left": '+=180'});
			$('.sidebar-search').animate({"margin-left": '+=200'});
		}
	})
);