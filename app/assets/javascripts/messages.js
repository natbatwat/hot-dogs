function request(method, url, data){
  return $.ajax({
    url: url,
    method: method,
    dataType: "json",
    data: data
  })
}

function pushMessage(e) {
    request('POST', '/messages', {message:{content: $('#inputbox').val()}}).done(function(data){
      console.log(data);

      appendMessage(data);
      $('#inputbox').val('');
    });
}

function appendMessage(msg){
  $('<li class="message">'+msg+'</li>').prependTo('#messages');
}

$(document).ready(function(){

  $('.send').on('click', pushMessage);
  $('#chatarea').on('keypress', function(e){
    if (e.keycode == '13'){
      pushMessage();
    }
  });
});
