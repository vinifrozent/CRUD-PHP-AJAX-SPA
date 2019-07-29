$(document).ready(function() {
        $.ajax({
            url: 'footerName.php',
            method: 'post'
        }).done(function(services) {
            $('.footerName').html('');
            $('.footerName').append(services);
        });
});