$(document).ready(function(){
	$('.quarts-slabs').hide()
	$('.collection-h1').hide()
	$('.tile-h1').hide()
	$('#tile-header').hide()
	$('.tiles-slabs').hide()
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
	$('#care_and_maintainence').hide();
	$('#tile-header-picture').hide();

	// $('#mobile-cust-nav').hide();





	// if(window.innerHeight > window.innerWidth){

  // }

  	//stone-nav fade in 
 //  	$('#nav li:nth-child(1)').on('mouseover', function(){
	// $('#stone-nav').fadeIn();

 //  	})

 //  	$('#nav li:nth-child(2)').on('mouseover', function(){
	// 	$('#stone-nav').fadeOut();
	// })

	$('#nav li:nth-child(3)').on('mouseover', function(){
		$('#cust-nav').fadeOut();
	});


  	//customer-care
	$('#nav li:nth-child(5)').on('mouseover', function(){
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

	// QUARTS 

	$('#nav li:nth-child(1)').on('click', function(){

			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('.quarts-slabs').fadeIn(2000);
			$('#quartz-header').show(2000);		
			$('.collection-h1').fadeIn(2000);
	})

	// TILES

	$('#nav li:nth-child(2)').on('click', function(){

			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('.tiles-slabs').fadeIn(2000);
			$('#tile-header-picture').fadeIn();
			$('#tile-header').show(2000);		
			$('.tile-h1').fadeIn(2000);
	})

	// MOSAICS

	$('#nav li:nth-child(3)').on('click', function(){

			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('.mosaics-slabs').fadeIn(2000);

	})
	
	// Contact

	$('#nav li:nth-child(4)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();	
			$("#certifications").hide();
			$('#contact-div').slideDown();
		
	})

	//-----Customer Care----

	// Care And Maintainence

	$('#cust-nav li:nth-child(1)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#care_and_maintainence').fadeIn();

			$("#certifications").hide();

	})

	$('#cust-nav li:nth-child(2)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#faq-div').fadeIn();
			$("#certifications").hide();

	})



	//Reviews

	$('#cust-nav li:nth-child(3)').on('click', function(){
			$('body').css('background-image', 'none').css('background-color', 'white');
			$('.hide').hide();
			$('#review-div').fadeIn();
			$("#certifications").hide();			

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

