$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $("#form").submit(function( event ) {
    var name = $('input').val();
    var url = $(this).attr('action');

    $.ajax({
      type: "POST",
      url: url,
      data: { username: name },
      beforeSend: function() {
        $('#loading').html("<center><img src='/gifs/ajax-loader.gif'></center>")
      },
      success: function(data) {
        $('#loading').hide();
        $('#result').html(data);
      }
    });

    // event.preventDefault();
  });
});
