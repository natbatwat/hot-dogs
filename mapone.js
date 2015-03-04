var geocoder;
 var map;
 var infowindow = new google.maps.InfoWindow();
 function initialize() {
   geocoder = new google.maps.Geocoder();
   var myLatLng = new google.maps.LatLng(51.5361, -0.1751);
   var mapOptions = {
     zoom: 16,
     center: myLatLng,
     mapTypeId: 'roadmap'
   }
   var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
 

 var marker = new google.maps.Marker({
   position: myLatLng,
   map: map
 });
 
 function addMarker(map) {

   function codeLatLng() {
     var input = document.getElementById("latlng").value;
     var latlngStr = input.split(",",2);
     var lat = parseFloat(latlngStr[0]);
     var lng = parseFloat(latlngStr[1]);
     var latlng = new google.maps.LatLng(lat, lng);
     geocoder.geocode({'latLng': latlng}, function(results, status) {
       if (status == google.maps.GeocoderStatus.OK) {
        // results[1].formatted_address = "Williamsburg, NY, USA"

        // adding marker

          var marker = new google.maps.Marker({
            position: myLatLng,
            map: map
          });

          marker.setMap(map);

         // if (results[1]) {
         //   map.setZoom(11);
         //   marker = new google.maps.Marker({
         //       position: latlng,
         //       map: map
         //   });
         //   infowindow.setContent(latlng);
         //   infowindow.open(map, marker);
         // }
       } else {
         alert("Geocoder failed due to: " + status);
       }
     });
   }
  }
}
 google.maps.event.addDomListener(window, 'load', initialize);