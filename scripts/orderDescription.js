$(document).ready(function() {
        $.ajax({
            url: 'orderDescription.php',
            method: 'post'
        }).done(function(services) {
            $('.orderDescription').html('');
            $('.orderDescription').append(services);
        });
});