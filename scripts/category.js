$(document).ready(function() {
        $.ajax({
            url: 'category.php',
            method: 'post'
        }).done(function(services) {
            $('.menu-ul').html('');
            $('.menu-ul').append(services);
        });
});