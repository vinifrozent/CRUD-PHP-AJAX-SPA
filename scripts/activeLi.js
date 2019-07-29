	// $(document).ready(function() {
	$('.menu-ul').on('click', 'a', function() {
		$('.menu-ul a.active').removeClass('active');
		$(this).addClass('active');
		
		var customType = $( this ).data('filter');
		
		var posts = $('.menu-show-all');
		var post = document.getElementsByName('productsByCategory');
		var teste4 = posts.length;
		var teste2 = posts.data('cat');
		var teste = posts.data('cat').includes(customType);
		
		posts
        .hide()
        .filter(function () {
		if(teste === false)
		{
			for(var i = 0; i<=posts.length;i++ )
			{posts.css("display","none")}
		}
		else{
		return $(this).data('cat').includes(customType);}
        })
        .show();
	});
	// });