$(document).ready(function() {
        $.ajax({
            url: 'aboutItems.php',
            method: 'post'
        }).done(function(services) {
            $('.aboutItems').html('');
            $('.aboutItems').append(services);
        });
});