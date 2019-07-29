
$('#menu-ul li a').on('click', function() { 
    var customType = $( this ).data('filter');

    posts
        .hide()
        .filter(function () {
            return $(this).data('cat') === customType;
        })
        .show();
});