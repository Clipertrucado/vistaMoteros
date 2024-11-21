<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<title>Bienvenido a mi Formulario</title>
</head>

<body>
	<!-- Formulario de registro para Clubes -->
	<div class="container-form sign-up club-sign-up">
		<div class="welcome-back">
			<div class="message">
				<h2>Bienvenido a Bikers</h2>
				<p>Si ya tienes una cuenta por favor inicia sesión aquí</p>
				<button class="sign-up-btn active">Iniciar Sesión</button>
			</div>
		</div>
		<form class="formulario" id="form_registro_club" method="post"
			action="/usuario/registroClub">
			<u style="display: inline;">Club</u>
			<p class="sign-up-btn sign-up-user" style="display: inline;">&nbsp;Usuario</p>
			<h2 class="create-account">Crear una cuenta de Club</h2>
			<div class="iconos">
				<div class="border-icon">
					<i class='bx bxl-instagram'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-apple'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-facebook-circle'></i>
				</div>
			</div>
			<input type="text" placeholder="Nombre del club" id="nombre_club"
				name="nombre_club" required> <input type="text"
				placeholder="Colores del club" id="colores_club" name="colores_club"
				required> <input type="email" placeholder="Mail del club"
				id="mail_club" name="mail_club" required> <input
				type="password" placeholder="Contraseña" id="contraseña_club"
				name="contraseña_club" required> <input type="password"
				placeholder="Confirmar Contraseña" id="confirmar_contraseña"
				name="confirmar_contraseña_club" required>
			<button class="botoncito" type="submit" value="Registrarse Clubs">Crear
				Club</button>
		</form>
	</div>

	<!-- Formulario de registro para Usuarios -->
	<div class="container-form sign-up user-sign-up">
		<div class="welcome-back">
			<div class="message">
				<h2>Bienvenido a Bikers</h2>
				<p>Si ya tienes una cuenta por favor inicia sesión aquí</p>
				<button class="sign-up-btn active">Iniciar Sesión</button>
			</div>
		</div>
		<form class="formulario" id="form_registro_usuario" method="post"
			action="/usuario/registroUsuario">
			<div style="margin-left: 1px; align-items: start;">
				<p class="sign-up-btn sign-up-club" style="display: inline;">Club&nbsp;</p>
				<u style="display: inline">Usuario</u>
			</div>
			<h2 class="create-account">Crear una cuenta de Usuario</h2>
			<div class="iconos">
				<div class="border-icon">
					<i class='bx bxl-instagram'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-apple'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-facebook-circle'></i>
				</div>
			</div>
			<input type="text" placeholder="Nombre" id="nombre_usuario"
				name="nombre_usuario" required> <input type="text"
				placeholder="Apellidos" id="apellidos_usuario"
				name="apellidos_usuario" required> <input type="date"
				placeholder="Fecha de Nacimiento" id="fecha_nacimiento_usuario"
				name="fecha_nacimiento_usuario" required> <input
				type="email" placeholder="Email" id="email_usuario"
				name="email_usuario" required> <input type="tel"
				placeholder="Teléfono" id="telefono_usuario" name="telefono_usuario"
				required> <input type="text" placeholder="Nick"
				id="nick_usuario" name="nick_usuario" required> <input
				type="text" placeholder="DNI" id="dni_usuario" name="dni_usuario"
				required> <input type="password" placeholder="Contraseña"
				id="contraseña_usuario" name="contraseña_usuario" required>
			<input type="password" placeholder="Confirmar Contraseña"
				id="confirmar_contraseña_usuario"
				name="confirmar_contraseña_usuario" required>
			<button class="botoncito" type="submit" value="Registrarse Usuario">Crear
				Usuario</button>
		</form>
	</div>

	<!-- Formulario de Inicio de Sesión -->
	<div class="container-form sign-in active">
		<form class="formulario" id="form_login" method="post"
			action="/usuario/iniciarSesion">
			<h2 class="create-account">Iniciar Sesión</h2>
			<div class="iconos">
				<div class="border-icon">
					<i class='bx bxl-instagram'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-apple'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-facebook-circle'></i>
				</div>
			</div>
			<p class="cuenta-gratis">¿Aún no tienes una cuenta?</p>
			<input type="email" placeholder="Email" id="mail_login"
				name="mail_login" required> <input type="password"
				placeholder="Contraseña" id="contraseña_login"
				name="contraseña_login" required>
			<button class="botoncito" type="submit" value="Iniciar Sesión">Iniciar
				Sesión</button>
		</form>
		<div class="welcome-back">
			<div class="message">
				<h2>Bienvenido de nuevo</h2>
				<p>Si aún no tienes una cuenta, regístrate aquí:</p>
				<button class="sign-in-btn sign-up-club">Registrarse Club</button>
				<button class="sign-in-btn sign-up-user">Registrarse
					Usuario</button>
			</div>
		</div>
	</div>

	<script src="ajax.js"></script>
	<script src="script.js"></script>
</body>

</html>