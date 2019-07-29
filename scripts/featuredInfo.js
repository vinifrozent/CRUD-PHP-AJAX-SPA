$(document).ready(function() {
        $.ajax({
            url: 'featuredInfo.php',
            method: 'post'
        }).done(function(services) {
            $('.content-holder').html('');
            $('.content-holder').append(services);
        });
});