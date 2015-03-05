$(document).ready(function(){
  if(window.location.href === "http://localhost:3000/") {
    $('.window').windows({
      snapping: true,
      snapSpeed: 400,
      snapInterval: 200,
      onScroll: function(scrollPos){
          // scrollPos:Number
      },
      onSnapComplete: function($el){
          // after window ($el) snaps into place
      },
      onWindowEnter: function($el){
          // when new window ($el) enters viewport
      }
    })
  }
});