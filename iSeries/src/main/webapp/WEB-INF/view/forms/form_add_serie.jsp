<form action="cadastraSerie" method="POST" enctype="multipart/form-data">
				<div class="container">

					<i class="material-icons">movie</i>
					<div class="input-field col s12">
						<input id="nome" name="nome" type="text"> <label
							for="nome" class="center-align">Nome da Serie</label>
					</div>

					<i class="material-icons">description</i>
					<div class="input-field col s12">
						<input id="sinopse" name="sinopse" type="text"> <label
							for="sinopse" class="center-align">Sinopse</label>
					</div>

					<i class="material-icons">today</i>
					<div class="input-field col s12">
						<input id="ano" name="ano" type="text" > 
						<label
							for="ano" class="center-align">Ano de Lançamento</label>
					</div>
					
					<div class="col s12">
					
						<div class="input-field col s12 m6">
						    <select id="genero" name="genero" class="icons">
						      <option value="" disabled selected>Choose your option</option>
						      <option value="Terror" data-icon="/img/generos/terror.jpg" class="circle">Terror</option>
						      <option value="Suspense" data-icon="/img/generos/suspense.png" class="circle">Suspense</option>
						      <option value="Comédia" data-icon="/img/generos/comedia.jpg" class="circle">Comédia</option>
						      <option value="Ação" data-icon="/img/generos/acao.jpg" class="circle">Ação</option>
						      <option value="Romance" data-icon="/img/generos/romance.jpg" class="circle">Romance</option>
							 </select>
						</div>
							
					</div>
							
					<div class="col s12">
						<!-- File Imagem -->
						<div class="file-field input-field" align="right">
						   	<div class="btn">
						       	<span>Imagem</span>
						       	<input name="imagem" type="file">
						   	</div>
						   	<div class="file-path-wrapper">
						       	<input class="file-path validate" type="text">
						   	</div>
				    	</div>
					</div>
					
					<div class="row">
						<div class="input-field">
							<button class="btn waves-effect waves-light col s12">Register</button>
						</div>
					</div>
				</div>
			</form>
