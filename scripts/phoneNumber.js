$(document).ready(function() {
        $.ajax({
            url: 'phoneNumber.php',
            method: 'post'
        }).done(function(services) {
            $('.phoneNumber').html('');
            $('.phoneNumber').append(services);
        });
});