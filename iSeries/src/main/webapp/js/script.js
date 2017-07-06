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

//Ocultando e Mostrando Lista de Series e Formulario de Adicionar
$('#form_add_serie').hide();
$("#lista_series").hide();

$("#add_series").click(()=>{	
	$('#form_add_serie').toggle();
	$('#listagem_series_adm').toggle();	
	$("#add_series").toggle();
	$("#lista_series").toggle();
});

$("#lista_series").click(()=>{	
	$('#form_add_serie').toggle();
	$('#listagem_series_adm').toggle();	
	$("#add_series").toggle();
	$("#lista_series").toggle();
});

// Ocultação do Formulario de Editar Serie
$("#form_update_serie").hide();

$("#button_edit").click(()=>{
	$("#form_update_serie").toggle(1000);
	//Mudando Visão dos Dados da Serie
	$("#dados_serie").toggle(1000);
});

$("#dados_serie2").click(()=>{
	$("#form_update_serie").toggle(1000);
	//Mudando Visão dos Dados da Serie
	$("#dados_serie").toggle(1000);
});



