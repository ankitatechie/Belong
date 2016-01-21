$(document).ready(function() {
	// Calculate height and width of each hexagonal
  	var width = $('.content').width();
  	$('.content').css('height',width+20);

  	// Calculate width for profile pic hexagon
  	$('.profile .hexagon').css('width',width);

  	// Calculate offset of li from body to keep the padding equal for the profile pic
  	var padding = $('.paddingLeft').offset().left;
  	$('.biography .inner').css({'padding-left':padding, 'padding-right':padding});

  	// Calculate height of hexagonal on resizing window to keep it equal to width
   	$(window).resize(function() {
      	var width = $('.content').width();
      	$('.content').css('height',width+10);

      	// Calculate width for profile pic hexagon
  		$('.profile .hexagon').css('width',width);

      	// Calculate offset of li from body to keep the padding equal for the profile pic
  		var padding = $('.paddingLeft').offset().left;
  		$('.biography .inner').css({'padding-left':padding, 'padding-right':padding});
   	}); 
});