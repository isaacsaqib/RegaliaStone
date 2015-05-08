$(document).ready(function(){
	$('#quartz-slabs').hide()
	$('#quartz-header').hide();
	$('#contact-div').hide();
	$('#granites-slabs').hide();
	$('#granites-header').hide();

	// Quarts 

	$('#nav li:nth-child(2)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#quartz-slabs').fadeIn(2000)
			$('#quartz-header').show(2000);
			$('#contact-div').hide();
			$('#granites-slabs').hide();
			$('#granites-header').hide();
	})

	// Granite

	$('#nav li:nth-child(3)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#granites-slabs').fadeIn(2000)
			$('#granites-header').fadeIn(2000);
			$('#quartz-header').hide();
			$('#quartz-slabs').hide();
			$('#contact-div').hide();
	})

	// Contact

	$('#nav li:nth-child(4)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#contact-div').slideDown();
			$('#quartz-slabs').hide()
			$('#quartz-header').hide();
			$('#granites-slabs').hide();
			$('#granites-header').hide();
	})
})

