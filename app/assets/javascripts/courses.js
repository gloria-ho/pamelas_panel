// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  if ($('body.courses.index').length == 0) {
    return;
  }
  $('.delete-course').click(function(e){
    e.preventDefault();
    let deletionUrl = e.target.getAttribute('href');
    $.ajax({
      method: 'DELETE',
      url: deletionUrl,
      success: function(data) {
        $(e.target).parents('.course-div').remove();
        toastr.success('Course has been successfully deleted.');
      }
    })
  });

});