//Resize the mainstage

$(window).resize(function() {
	resizeMainMap();
});

function resizeMainMap() {
	$("#dw-dashboard-main-map").css("height", $(window).height() - 200);
	$("#dw-dashboard-main-map:first-child").css("height", $(window).height()-200);
	$("#dw-dashboard-main-map").css("width", $(window).width());
	$("#dw-dashboard-main-map:first-child").css("width", $(window).width());
	$("#dw-dashboard-column-two").css("height", $(window).height() - 200);
}

//Set the zipcode

function setDwZip(zipcode) {
	$.ajax({
		type: "GET",
		url: "http://maps.googleapis.com/maps/api/geocode/json?sensor=false&address=" + zipcode,
		async: false,
		success: function(data) {
			var zip_latitude = data['results'][0]['geometry']['location']['lat'];
			var zip_longitude = data['results'][0]['geometry']['location']['lng'];
			var map = new google.maps.Map(document.getElementById('dw-dashboard-main-map'), {
				zoom: 12,
				center: new google.maps.LatLng(zip_latitude, zip_longitude),
				mapTypeId: google.maps.MapTypeId.ROADMAP
			});
			
			$("body").removeClass("dashboard-starting-background");
			resizeMainMap();
			$("#dw-dashboard-main").fadeIn(800);
		}
	});
}

//Change zipcode

$("#new-dw-zip").keypress(function(e) {
	if (e.which == 13) {
		changeDwZip();
	}
});

$("#change-zip-button").click(function() {
	changeDwZip();
});

function changeDwZip() {
	$("#change-zip-modal").modal("hide");
	setDwZip($("#new-dw-zip").val());
}

//Toggle list view

$("#toggle-list-view").click(function() {
	$("#dw-dashboard-column-one").addClass("col-sm-6")
	$("#dw-dashboard-column-two").addClass("col-sm-6").fadeIn("slow");
	resizeMainMap();
});

//Toggle map view

$("#toggle-map-view").click(function() {
	$("#dw-dashboard-column-two").fadeOut("slow").removeClass("col-sm-6");
	$("#dw-dashboard-column-one").removeClass("col-sm-6");
	resizeMainMap();
});

//Launch proposal modal

$(".dw-dashboard-listing-modbox").click(function() {
	$("#submit-prop-modal").modal("show");
});