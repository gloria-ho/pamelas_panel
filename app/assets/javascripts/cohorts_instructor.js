// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  if ($('body.cohort-instructors.index').length == 0) {
    return;
  }
  $('.delete-cohort-instructor').click(function(e){
    e.preventDefault();
    let deletionUrl = e.target.getAttribute('href');
    $.ajax({
      method: 'DELETE',
      url: deletionUrl,
      success: function(data) {
        $(e.target).parents('.cohort-instructor-div').remove();
        toastr.success('Cohort Instructor has been successfully deleted.');
      }
    })
  });

});