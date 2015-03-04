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
  })
})