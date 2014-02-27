$( document ).ready(function() {
  $('nav').on('ajax:success', newPost.success);
});

var newPost = {
  success: function(e, data) {
    $('#main-content').append(data);
  }
}