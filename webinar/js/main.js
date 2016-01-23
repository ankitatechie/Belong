$(document).ready(function() {



	 // Calculate height and width of each hexagonal
  	var width = $('.content').width();
  	$('.content').css('height',width+20);

  	// Calculate width for profile pic hexagon
  	$('.profile .hexagon').css('width',width);

  	// Calculate offset of li from body to keep the padding equal for the profile pic
    if($(window).width() > 480){
      var padding = $('.paddingLeft').offset().left;
      $('.biography .inner').css({'padding-left':padding, 'padding-right':padding});
    }
  	

  	// Calculate height of hexagonal on resizing window to keep it equal to width
   	$(window).resize(function() {
    	var width = $('.content').width();
    	$('.content').css('height',width+10);

      // Calculate width for profile pic hexagon
  		$('.profile .hexagon').css('width',width);

      // Calculate offset of li from body to keep the padding equal for the profile pic
      if($(window).width() > 480){
        var padding = $('.paddingLeft').offset().left;
        $('.biography .inner').css({'padding-left':padding, 'padding-right':padding});
      }
   	}); 

    // Navbar transitions
    window.onscroll = function(){
      if ($(this).scrollTop() > 100) {
        $('.navbar-default').css('opacity','0.7');
      }else{
        $('.navbar-default').css('opacity','1');
      }
    };

    // smooth scrolling
    $('a[href^="#"]').on('click',function (e) {
      e.preventDefault();

      var target = this.hash;
      var $target = $(target);

      $('html, body').stop().animate({
          'scrollTop': $target.offset().top
      }, 900, 'swing', function () {
          window.location.hash = target;
      });
    });
    
});