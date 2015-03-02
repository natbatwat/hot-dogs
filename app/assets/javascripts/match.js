$(document).ready(function(){
  function changeBuddyStatus(){
    $this = $(this);
    dog2_id = $this.data("dog2_id");
    request("PUT", "/user/" + current_user.id , {user:{match_list: current_user.id + '_' + dog2_id}})
    .done(function(){
      $this.children().toggleClass("hide");
    });
  };
  $(".button").on("click", ".toggle", changeBuddyStatus);
})
