$(document).ready(function(){

    $('.window').windows({
        snapping: true,
        snapSpeed: 400,
        snapInterval: 700,
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

});