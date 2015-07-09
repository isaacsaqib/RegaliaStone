$(document).ready(function(){
	$('#quartz-slabs').hide()
	$('#quartz-header').hide();
	$('#contact-div').hide();
	$('#granites-slabs').hide();
	$('#granites-header').hide();
	$('#stone-nav').hide();
	$('#cust-nav').hide();
	$('#faq-div').hide();
	$('.answers').hide();



	if(window.innerHeight > window.innerWidth){
    alert("Please rotate your mobile device to view this page!");
  }

  	//stone-nav fade in 
  	$('#nav li:nth-child(1)').on('mouseover', function(){
	$('#stone-nav').fadeIn();

  	})

  	$('#nav li:nth-child(2)').on('mouseover', function(){
		$('#stone-nav').fadeOut();
	})

	$('#nav li:nth-child(3)').on('mouseover', function(){
		$('#cust-nav').fadeOut();
	})

	$('#nav li:nth-child(4)').on('mouseover', function(){
		$('#stone-nav').fadeOut();
	})


  	//customer-care
	$('#nav li:nth-child(4)').on('mouseover', function(){
		$('#cust-nav').fadeIn();

  	})

  	$('#nav li:nth-child(1)').on('mouseover', function(){
		$('#cust-nav').fadeOut();
	})
		$('#nav li:nth-child(2)').on('mouseover', function(){
		$('#cust-nav').fadeOut();
	})
		$('#nav li:nth-child(3)').on('mouseover', function(){
		$('#cust-nav').fadeOut();
	})




// -------Stone-------

	// Quarts 

	$('#stone-nav li:nth-child(2)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#quartz-slabs').fadeIn(2000)
			$('#quartz-header').show(2000);
			$('#contact-div').hide();
			$('#granites-slabs').hide();
			$('#granites-header').hide();
			$('#faq-div').hide();
			$('.answers').hide();			
	})

	// Granite

	$('#stone-nav li:nth-child(3)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#granites-slabs').fadeIn(2000)
			$('#granites-header').fadeIn(2000);
			$('#quartz-header').hide();
			$('#quartz-slabs').hide();
			$('#contact-div').hide();
			$('#faq-div').hide();
			$('.answers').hide();					
	})

	
	// Contact

	$('#nav li:nth-child(2)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#contact-div').slideDown();
			$('#quartz-slabs').hide()
			$('#quartz-header').hide();
			$('#granites-slabs').hide();
			$('#granites-header').hide();
			$('#faq-div').hide();
			$('.answers').hide();					
	})

	//-----Customer Care----

	// FAQ

	$('#cust-nav li:nth-child(1)').on('click', function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#quartz-header').hide();
			$('#quartz-slabs').hide();
			$('#granites-slabs').hide();
			$('#granites-header').hide();				
			$('#contact-div').hide();
			$('#faq-div').fadeIn();
	})


	//View our latest styles button 
	$("#front-page-button").on("click", function(){
			$('#box').fadeOut(100)
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('#quartz-slabs').fadeIn(2000)
			$('#quartz-header').show(2000);
			$('#contact-div').hide();
			$('#granites-slabs').hide();
			$('#granites-header').hide();		
	})


	//questions

	$(".question").on("click", function(){
		$(this).next().slideDown();
	})



})

