<form action="efetuarCadastro" method="POST">

	<p style="text-align: center">
		<img src="img/logo.png" alt="" class="responsive-img">
	</p>

	<div class="container">


		<div>
			<i class="material-icons">account_circle</i>
		</div>
		<div class="input-field">
			<input id="login" name="login" type="text"> <label
				for="login" class="center-align">Username</label>
		</div>

		<div>
			<i class="material-icons">email</i>
		</div>
		<div class="input-field">
			<input id="email" name="email" type="email"> <label
				for="email" class="center-align">Email</label>
		</div>

		<div>
			<i class="material-icons">lock_outline</i>
		</div>
		<div class="input-field">
			<input id="senha" name="senha" type="password"> <label
				for="senha" class="center-align">Password</label>
		</div>

		<div>
			<i class="material-icons">lock_outline</i>
		</div>
		<div class="input-field">
			<input id="senha2" name="senha2" type="password"> <label
				for="senha2" class="center-align">Confirme seu Password</label>
		</div>
	</div>

	<div class="container ">
		<div class="row">
			<div class="col s6">
				<div class="input-field">
					<button class="btn waves-effect waves-light">Register</button>
				</div>
			</div>

			<div class="col s6">
				<a href="#" id="loginActive" class="right">Login!</a> <br>
			</div>

		</div>
	</div>

</form>
