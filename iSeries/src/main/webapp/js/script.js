// Initialize collapse button
  $("#ativa_side_nav").sideNav();
 
// Initialize Carousel
  $('.carousel').carousel();
  
// Initialize Modal
  $('.modal').modal();
  
// Initialize Slide
  $('.slider').slider()
  $('.slider').slider('start')
  $('.slider').slider({full_width: true});
  
//Next slide
  $('.carousel').carousel('next');
  $('.carousel').carousel('next', 3); // Move next n times.
  
  $("#form-serie").hide();
  
  $("#button-add-series").click(function(){
	  $("#form-serie").show();
  });
  