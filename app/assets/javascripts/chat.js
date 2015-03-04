function request(method, url, data){
  return $.ajax({
    url: url,
    method: method,
    dataType: "json",
    data: data
  })
}

function getMessage() {
  $('.send').on('click', function(){
    $('#inputbox')
  });

}
function appendMessage(){

}

$(document).ready(function(){
  getMessage();

});
