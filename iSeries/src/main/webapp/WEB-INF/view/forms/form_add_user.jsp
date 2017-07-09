<form action="efetuarCadastro" method="POST">

	<p style="text-align: center">
		<img src="img/logo.png" alt="" class="responsive-img">
	</p>

	<div class="container">


		<div>
			<i class="material-icons">account_circle</i>
		</div>
		<div class="input-field">
			<input id="login1" name="login" type="text" class="validate"> <label
				for="login1" class="center-align">Username</label>
		</div>

		<div>
			<i class="material-icons">email</i>
		</div>
		<div class="input-field">
			<input id="email1" name="email" type="email" class="validate"> <label
				for="email1" class="center-align">Email</label>
		</div>

		<div>
			<i class="material-icons">lock_outline</i>
		</div>
		<div class="input-field">
			<input id="senha1" name="senha" type="password" class="validate"> <label
				for="senha1" class="center-align">Password</label>
		</div>

		<div>
			<i class="material-icons">lock_outline</i>
		</div>
		<div class="input-field">
			<input id="senha2" name="senha2" type="password" class="validate"> <label
				for="senha2" class="center-align">Confirme seu Password</label>
		</div>
	</div>

	<div class="container ">
		<div class="row">
			<div class="col s6">
				<div class="input-field">
					<button id="button-add-user" class="btn waves-effect waves-light" disabled="disabled">Register</button>
				</div>
			</div>

			<div class="col s6">
				<a href="#" id="loginActive" class="right">Login!</a> <br>
			</div>

		</div>
	</div>

</form>
