//Animate enter zip field

$(document).ready(function() {
	$("#dashboard-enter-zip").fadeIn(800);
	$("#dashboard-enter-zip").animate({
		"margin-top": "17%"
	}, 1200);
});

//Resize the mainstage

$(window).resize(function() {
	resizeMainstage();
});

function resizeMainstage() {
	$("#dw-dashboard-mainstage").css("height", $(window).height() - 170);
	$("#dw-dashboard-mainstage:first-child").css("height", $(window).height() - 170);
}

//Set the zipcode

$("#set-zip-button").click(function() {
	setDwZip();
});

$("#dw-zip").keypress(function(e) {
	if (e.which == 13) {
		setDwZip();
	}
});

function setDwZip() {
	var dwZipcode = $("#dw-zip").val();
	$("#dashboard-enter-zip").fadeOut(800, function() {
		$.ajax({
			type: "GET",
			url: "http://maps.googleapis.com/maps/api/geocode/json?sensor=false&address=" + dwZipcode,
			async: false,
			success: function(data) {
				var zip_latitude = data['results'][0]['geometry']['location']['lat'];
				var zip_longitude = data['results'][0]['geometry']['location']['lng'];
				var map = new google.maps.Map(document.getElementById('dw-dashboard-mainstage'), {
					zoom: 12,
					center: new google.maps.LatLng(zip_latitude, zip_longitude),
					mapTypeId: google.maps.MapTypeId.ROADMAP
				});
				
				$("body").removeClass("dashboard-starting-background");
				resizeMainstage();
				$("#dashboard-main").fadeIn(800);
			}
		});		
	});
}

