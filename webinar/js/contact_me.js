$(document).ready(function(){
    $('form[data-async]').on('submit', function(event) {
        debugger;
        var $form = $(this);
        var $target = $($form.attr('data-target'));
        $('.contact form .btn img').css('visibility', 'visible');
        var request = $.ajax({
            url: '../mail/contact_me.php',
            type: "POST",
            data: $form.serialize(),
            success: function(data, status) {
                //clear all fields
                $('#contactForm').trigger("reset");
                $('.contact h4').show();
            },
            error: function(data, status){
                $('.error').show();
            }
        });
        request.done(function() {
         $('.contact form .btn img').css('visibility', 'hidden');
         // $('.success').show();
        });
        return false;
    });
});
