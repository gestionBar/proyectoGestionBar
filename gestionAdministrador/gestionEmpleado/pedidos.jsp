
<!DOCTYPE html>
<html lang="en">
<head>

     	<title>London Bridge</title>
     	<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="../../images/favicon.ico" rel="icon">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="description" content="">
		<meta name="keywords" content="">
		    <!-- Favicons -->
			<link href="../../images/favicon.ico" rel="icon">
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../../css/bootstrap.min.css">
		<link rel="stylesheet" href="../../css/font-awesome.min.css">
		<link rel="stylesheet" href="../../css/animate.css">
		<link rel="stylesheet" href="../../css/owl.carousel.css">
		<link rel="stylesheet" href="../../css/owl.theme.default.min.css">
		<link rel="stylesheet" href="../../css/magnific-popup.css">
		<link rel="stylesheet" href="../../css/index.css">
     

</head>
<body>
	<!-- MENU -->
	<section class="navbar custom-navbar navbar-fixed-top" role="navigation" style="background: black;">
		<div class="container">

			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>

				<!-- lOGO TEXT HERE -->
				<a href="indexEmpleado.html" class="navbar-brand">London <span>.</span>Bridge</a>
			</div>

			<!-- MENU LINKS -->
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-nav-first">
					<li><a href="pedidos.jsp" class="smoothScroll">Lista de pedidos</a></li>
					<li><a href="../../gestionClientes/menu.html" class="smoothScroll">Menú</a></li>
					<li><a href="clientes.jsp" class="smoothScroll">Lista clientes</a></li>
					<li><a href="../../gestionClientes/eventos.html" class="smoothScroll">Eventos</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg" style="color:#00ff0d">
						<path
							d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z" />
						<path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
						<path fill-rule="evenodd"
							d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z" />
					</svg>
					<b><a style="color: white;">NOMBRE DEL EMPLEADO</a>
						<br>
						<a href="#" style="color: white;">Perfil</a>&nbsp&nbsp&nbsp&nbsp&nbsp
						<a href="../../index.html" style="color: white;">Cerrar Sesión</a></b>
				</ul>

			</div>
		</div>
	</section>
	<br>
	<br>

        <!-- PRE LOADER -->
        <section class="preloader">
            <div class="spinner">
                <span class="spinner-rotate"></span>
            </div>
        </section>

        <div class="row">
            <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

            <div class="container">
                <h3 class="text-center">Lista de Clientes</h3>
                <hr>
                <br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Id Factura</th>
                            <th>Detalle</th>
                            <th>Cantidad</th>
                            <th>Precio Total</th>
                            <th>Estado</th>

                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${listUser}">
                        <tr>
                            <td>
                        <c:out value="${user.idproducto}" />
                        </td>
                        <td>
                        <c:out value="${user.producto}" />
                        </td>
                        <td>
                        <c:out value="${user.valor}" />
                        </td>
                        <td>
                        <c:out value="${user.fecha}" />
                        </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Aguardiente antioqueño en presentación de 750 ml</td>
                            <td>2</td>
                            <td>70000</td>
                            <td>                                <select id="inputState"
                                        class="controls">
                                    <option selected class="controls">Elige estado:</option>
                                    <option>Pendiente</option>
                                    <option>Cancelado</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                                Whisky Old Parr presentación de 750 ml</td>
                            <td>1</td>
                            <td>180000</td>
                                                        <td>                                <select id="inputState"
                                        class="controls">
                                    <option selected class="controls">Cancelado</option>
                                    <option>Pendiente</option>
                                    <option>Elige estado</option>
                                </select></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                        <div class="container text-left">
			 <a href="../../gestionClientes/registroCliente.jsp" type="submit" class="section-btn" role="button" aria-pressed="true">Guardar </a>
            </div>
        </div>

   

   <!-- SCRIPTS -->
	<script src="../../js/jquery.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/jquery.stellar.min.js"></script>
	<script src="../../js/wow.min.js"></script>
	<script src="../../js/owl.carousel.min.js"></script>
	<script src="../../js/jquery.magnific-popup.min.js"></script>
	<script src="../../js/smoothscroll.js"></script>
	<script src="../../js/custom.js"></script>

</body>
</html>