$(document).ready(function() {
        $.ajax({
            url: 'catalogText.php',
            method: 'post'
        }).done(function(services) {
            $('.catalogText').html('');
            $('.catalogText').append(services);
        });
});