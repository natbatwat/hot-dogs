$(document).ready(function(){
  console.log('ready');
  var add_buddy_button = $('#add-buddy-button');
  var buddy_status = $('.buddy-status');
  var accept_request = $('#accept-request');

  add_buddy_button.click(function(){
    console.log('button clicked');
    buddy_status.toggleClass('hide');
    var match_raw_data = add_buddy_button.data()
    console.log(match_raw_data)
    var match_fields = []
    match_fields.push(match_raw_data.dogRequester, match_raw_data.dogRequestee, match_raw_data.dogRequesterId, match_raw_data.dogRequesteeId)
    console.log(match_fields);
    $.ajax({
      url: match_raw_data.dogRequesterId + '/create_match',
      method: 'PUT',
      dataType: 'json',
      data: {user:match_fields}
    })
  })

  accept_request.click(function(){
    console.log('hi');
    var user_match_data = accept_request.data('id')
    console.log(user_match_data);
    $.ajax({
      url: '/user_matches/' + user_match_data + '/accept_match',
      method: 'PUT',
      dataType: 'json',
      data: {match_data:{status:"accepted"}}
    })
  })
})