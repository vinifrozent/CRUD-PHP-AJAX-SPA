$(document).ready(function() {
        $.ajax({
            url: 'aboutSub.php',
            method: 'post'
        }).done(function(services) {
            $('.about-info').html('');
            $('.about-info').append(services);
        });
});