$(document).ready(function(){
	$('#quartz-slabs').hide()
	$('#quartz-header').hide();
	// $('#box').hide()

	$('#nav li:nth-child(2)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#quartz-slabs').fadeIn(2000)
			$('#quartz-header').show(2000);



	})


})

