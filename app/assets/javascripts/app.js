$(document).ready(function(){
	$('.quarts-slabs').hide()
	$('.collection-h1').hide()
	$('#quartz-header').hide();
	$('#contact-div').hide();
	$('#granites-slabs').hide();
	$('#granites-header').hide();
	$('#stone-nav').hide();
	$('#cust-nav').hide();
	$('#faq-div').hide();
	$('.answers').hide();
	$('#terms').hide();	
	$('#review-div').hide();



	// if(window.innerHeight > window.innerWidth){
 //    alert("Please rotate your mobile device to view this page!");
 //  }

  	//stone-nav fade in 
 //  	$('#nav li:nth-child(1)').on('mouseover', function(){
	// $('#stone-nav').fadeIn();

 //  	})

 //  	$('#nav li:nth-child(2)').on('mouseover', function(){
	// 	$('#stone-nav').fadeOut();
	// })

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

	$('#nav li:nth-child(1)').on('click', function(){

			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.quarts-slabs').fadeIn(2000);
			$('.collection-h1').fadeIn(2000);
			$('.hide').hide();
			$('#slides').hide();
			$('#quartz-header').show(2000);		
	})

	// Granite

	$('#stone-nav li:nth-child(3)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#granites-slabs').fadeIn(2000)
			$('#granites-header').fadeIn(2000);
				
	})

	
	// Contact

	$('#nav li:nth-child(2)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();	
			$('#slides').hide();
	
			$('#contact-div').slideDown();
		
	})

	//-----Customer Care----

	// FAQ

	$('#cust-nav li:nth-child(1)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#faq-div').fadeIn();
			$('#slides').hide();


	})

	// Warranty


	$('#cust-nav li:nth-child(2)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#warranty-div').show();
			$('#terms').show();
			$('#slides').hide();


	})

	//Reviews

	$('#cust-nav li:nth-child(3)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#review-div').fadeIn();
			$('#slides').hide();

	})


	//View our latest styles button 
	$("#front-page-button").on("click", function(){

			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#quartz-slabs').fadeIn(2000)
			$('#quartz-header').show(2000);
	
	})


	//questions

	$(".question").on("click", function(){
		$(this).next().slideDown();
	})

	$("#tel_2").hide();
	$("#tel").on("mouseover", function(){
		$("#nav > li:nth-child(5)").hide();
		$("#tel_2").fadeIn();

	})



})

