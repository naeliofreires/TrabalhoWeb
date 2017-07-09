
function verificar(){
	if($("#login").val() === "" || $("#senha").val() === ""){
		alert("Insira seus dados, campo vázio presente!");
	}else{
		$("#btnSalvar").removeAttr('disabled');
	}
	
}