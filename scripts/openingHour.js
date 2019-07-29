$(document).ready(function() {
        $.ajax({
            url: 'openingHour.php',
            method: 'post'
        }).done(function(services) {
            $('.openingHours').html('');
            $('.openingHours').append(services);
        });
});