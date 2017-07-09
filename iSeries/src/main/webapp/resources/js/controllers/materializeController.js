//Iniciando collapse button
$("#ativa_side_nav").sideNav();

//Iniciando Carousel
$('.carousel').carousel();

//Iniciando Modal
$('.modal').modal();

//Initialize Slide
$('.slider').slider()
$('.slider').slider('start')
$('.slider').slider({full_width: true});

//Next slide
$('.carousel').carousel('next');
$('.carousel').carousel('next', 3); // Move next n times.

//Iniciando Select
$('select').material_select();