$(document).ready(function(){
    $('form[data-async]').on('submit', function(event) {
        debugger;
        var $form = $(this);
        var $target = $($form.attr('data-target'));
        // $('.loader').css('visibility', 'visible');
        var request = $.ajax({
            url: '../mail/contact_me.php',
            type: "POST",
            data: $form.serialize(),
            success: function(data, status) {
                //clear all fields
                $('#contactForm').trigger("reset");
            },
            error: function(data, status){
                alert('no');
                $('.error').show();
            }
        });
        request.done(function() {
         // $('.loader').css('visibility', 'hidden');
         // $('.success').show();
        });
        return false;
    });
});
