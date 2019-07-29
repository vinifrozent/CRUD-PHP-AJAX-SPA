$(document).ready(function() {
        $.ajax({
            url: 'websiteTop.php',
            method: 'post'
        }).done(function(services) {
            $('.websiteTop').html('');
            $('.websiteTop').append(services);
        });
});