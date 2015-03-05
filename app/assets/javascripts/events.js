$(document).ready(function(){
  console.log("event ready");
  var like = $("#like");
  var dislike = $("#dislike");
  var event_id = $('#like').val();
  like.click(function(){
    console.log('liked');
    $.ajax({
      url: event_id + '/like_event',
      method: 'GET',
      dataType: 'json',
      data: {},
    })
    .done(function(data){
      
    })
  });


  $('.indiv-event').mouseenter(function(){
    console.log($(this));
    $(this).addClass("animated pulse");
    $(this).find(".event-place").removeClass("place-hide");
  })


  $('.indiv-event').mouseleave(function(){
    console.log($(this));
    $(this).removeClass("animated pulse");
    $(this).find(".event-place").addClass("place-hide");
  })

})