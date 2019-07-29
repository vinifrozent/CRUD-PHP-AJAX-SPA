$(document).ready(function() {
        $.ajax({
            url: 'footerAddress.php',
            method: 'post'
        }).done(function(services) {
            $('.footerAddress').html('');
            $('.footerAddress').append(services);
        });
});