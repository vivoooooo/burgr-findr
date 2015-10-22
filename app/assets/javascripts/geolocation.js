

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
      
    } else { 
        console.log("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {
    console.log("Latitude: " + position.coords.latitude + 
    "  Longitude: " + position.coords.longitude);	
     currentLong = position.coords.longitude;
    currentLat = position.coords.latitude;

     $.ajax({
				     url: "/restaurants/location",
				     method: 'post',
				     data: {
				         userLong: currentLong,
				         userLat: currentLat 
				     }
				 }).done(function() {
				     console.log("success!");
              })
            }

getLocation()


