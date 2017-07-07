<form action="cadastraTemporada" method="POST" enctype="multipart/form-data">
<div class="row">
		
		<input id="serie" name="serie"  value="${serie.id}" hidden="true">
		
		<div class="input-field col s6">
			<i class="material-icons prefix"></i>
			<input id="numero" name="numero" type="text"> 
			<label	for="numero" class="center-align">Número da Temporada</label>
		</div>
		
		<div class="input-field col s6">
			<i class="material-icons prefix"></i>
			<input id="sinopse" name="sinopse" type="text"> 
			<label	for="sinopse" class="center-align">Ano de Lançamento</label>
		</div>
	       		
		<div class="row">
			<div class="input-field">
				<button class="btn waves-effect waves-light col s2 right">adicionar</button>
			</div>
		</div>
</div>
</form>
