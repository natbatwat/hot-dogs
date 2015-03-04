function initialise(){
  console.log('hotdog!')
  var mapCanvas = $('#map-canvas')[0];
  var myLatLng = new google.maps.LatLng(51.5361, -0.1751);
  var mapOptions = {
    center: myLatLng,
    zoom: 16
    // mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  debugger;
  var map2 = new google.maps.Map(mapCanvas, mapOptions);
  // addMarker(map);
  var marker = new google.maps.Marker({
    map: map2,
    position: myLatLng
  });
}

// // function addMarker(map) {

// //   if(navigator.geolocation){
// //    navigator.geolocation.getCurrentPosition(function(position){
// //      var pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

// //      var infowindow = new google.maps.InfoWindow({
// //        map: map,
// //        position: pos,
// //        content: "You are here WOOF"
// //      });

// //      map.setCenter(pos);
// //     }, function() {
// //       handleNoGeolocation(true);
// //     });
// //   } else {
// //     handleNoGeolocation(false);
// //   }
// // }

// // function handleNoGeolocation(errorFlag) {
// //   if (errorFlag) {
// //    var content = 'error: geolocation server failed';
// //   } else {
// //    var content = 'error: your browser does not support geolocation';
// //   }

// //   var infowindow = new google.maps.InfoWindow(options);
// //   map.setCenter(options.position);

// // }
$(document).ready(function(){
// google.maps.event.addDomListener(window, 'load', initialise);
  initialise();
})