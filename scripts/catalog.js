$(document).ready(function() {
        $.ajax({
            url: 'catalog.php',
            method: 'post'
        }).done(function(services) {
            $('#menu-wrapper').html('');
            $('#menu-wrapper').append(services);
        });
});