$(document).ready(function() {
        $.ajax({
            url: 'aboutTitles.php',
            method: 'post'
        }).done(function(services) {
            $('.aboutTitles').html('');
            $('.aboutTitles').append(services);
        });
});