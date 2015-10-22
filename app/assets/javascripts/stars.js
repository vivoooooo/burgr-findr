$(document).ready(function () {
	$('.rating').each(function () {
		var rating = $(this).data('rating');
		$(this).raty({
	        starOn: "<%= image_path('star-on.png') %>",
        	starOff: "<%= image_path('star-off.png') %>",
        	score: rating,
        	readOnly: true
      	});
	})
});
