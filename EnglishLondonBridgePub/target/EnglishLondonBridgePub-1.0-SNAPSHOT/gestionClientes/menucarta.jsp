<!DOCTYPE html>
<html>
    <head>
        <title>London Bridge</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicons -->
        <link href="../images/favicon.ico" rel="icon">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/animate.css">
        <link rel="stylesheet" href="../css/owl.carousel.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">
        <link rel="stylesheet" href="../css/magnific-popup.css">
        <link rel="stylesheet" href="../css/index.css">
        
        <!--lee codigo menu javascript-->
        <script type="text/javascript" src="../js/menucarta.js"></script>
        <!--lee codigo menu css-->
        <link type="text/css" href="../css/menucarta.css" rel="stylesheet" media="screen"/>

    </head>
    <body style="background-image: url(../images/fondomadera.jpg);">
        <!-- MENU -->
        <section class="navbar custom-navbar navbar-fixed-top" role="navigation" style="background: black;">
            <div class="container">

                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="../index.html" class="navbar-brand">London <span>.</span>Bridge</a>
                </div>

                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                        <li><a href="menu.html" class="smoothScroll">Menú</a></li>
                        <li><a href="eventos.html" class="smoothScroll">Eventos</a></li>
                        <li><a href="IndexCliente.html" class="smoothScroll">Reserva</a></li>
                        <li><a href="#contact" class="smoothScroll">Contacto</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg" style="color:#B72839">
                        <path
                            d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z" />
                        <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                        <path fill-rule="evenodd"
                              d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z" />
                        </svg>
                        <b><a style="color: white;">NOMBRE DEL USUARIO</a>
                            <br>
                            <a href="historialcliente.html" style="color: white;">Historial</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../index.html" style="color: white;">Cerrar Sesión</a></b>
                    </ul>

                </div>
            </div>
        </section>
        <br>
        <br>
                <br>
        <br>
                <br>
        <br>        <br>
        <br>        <br>
        <br>
        <div id="todo" class="todoNo">
            <div id="menu" class="menuNo">
                <!--Producto del 1 al 9-->
                <div id="div1" name="DIVS">
                    
                </div>
                <div id="div2" name="DIVS"></div>
                <div id="div3" name="DIVS"></div>
                <div id="div4" name="DIVS"></div>
                <div id="div5" name="DIVS"></div>
                <div id="div6" name="DIVS"></div>
                <div id="div7" name="DIVS"></div>
                <div id="div8" name="DIVS"></div>
                <div id="div9" name="DIVS"></div>


                <!--Botones de compra-->
                <div id="divbotones">
                    <input type="button" id="botonTotal" value="Calcular total"/>
                    <input type="button" id="botonDatos" value="Datos personales" disabled="disabled"/>
                    <input type="button" id="botonPago" value="Pago" disabled="disabled"/>
                    <input type="button" id="botonConfirmar" value="Confirmar pedido" disabled="disabled"/>
                </div>


                <!--zona de compra, tablas, formularios, etc.-->
                <div id="divZonaCompra" class="divZonaCompraNo">


                    <!--Carrito de la compra-->
                    <div id="divTotal" class="divsNo">
                        <p><b>Carrito de la compra, si quiere hacer alguna modificacion aun esta a tiempo:</b></p>
                        <table id="tablaTotal"></table>
                    </div>


                    <!--Datos personales--> 
                    <div id="divDatos" class="divsNo">
                        <p><b>Introduzca sus datos personales:</b></p>

                        <div id="divDatosPersonales0">
                            <div id="divDatosPersonales1">
                                <label>Nombre completo:</label><br/>
                                <input type="text" id="nombre" value="" size="26" /><br/>


                                <label>DNI:</label><br/>
                                <input type="text" id="dni" value="" size="8" maxlength="9" /><br/>


                                <label>Fecha de nacimiento:</label><br/>
                                <select id="fechaNacimientoDia">
                                    <option value=""> dia </option>
                                </select>
                                <select id="fechaNacimientoMes">
                                    <option value="">      mes</option>
                                    <option value="1">Enero</option>
                                    <option value="2">Febrero</option>
                                    <option value="3">Marzo</option>
                                    <option value="4">Abril</option>
                                    <option value="5">Mayo</option>
                                    <option value="6">Junio</option>
                                    <option value="7">Julio</option>
                                    <option value="8">Agosto</option>
                                    <option value="9">Septiembre</option>
                                    <option value="10">Octubre</option>
                                    <option value="11">Noviembre</option>
                                    <option value="12">Diciembre</option>
                                </select> 
                                <select id="fechaNacimientoAnio">
                                    <option value="">  año </option>
                                </select><br/>
                            </div>

                            <div id="divDatosPersonales2">
                                <label>Telefono movil:</label><br/>
                                <input type="text" id="movil" value="" size="8" maxlength="9"/><br/>

                                <label>Email:</label><br/>
                                <input type="text" id="email1" value="" size="25" /><br/>

                                <label>Repita el email:</label><br/>
                                <input type="text" id="email2" value="" size="25" /> 
                            </div>
                        </div>


                        <div id="divDomicilio">
                            <label>Tipo de via:</label>
                            <select id="tipoDeVia">
                                <option value="Avenida">Avenida</option>
                                <option value="Calle"selected="selected">Calle</option>
                                <option value="Camino">Camino</option>
                                <option value="Carretera">Carretera</option>
                                <option value="Pasaje">Pasaje</option>
                                <option value="Plaza">Plaza</option>
                                <option value="Residencia">Residencia</option>
                                <option value="Ronda">Ronda</option>
                                <option value="Travesia">Travesia</option>
                                <option value="Urbanizacion">Urbanizacion</option>
                            </select>     

                            <label>Nombre via:</label>
                            <input type="text" id="viaNombre" value="" size="20" /><br/>

                            <label>Nº/km:</label>
                            <input type="text" id="viaNumero" value="" size="2" />  

                            <label>Bloque:</label>
                            <input type="text" id="viaBloque" value="" size="2" />         

                            <label>Escalera:</label>
                            <input type="text" id="viaEscalera" value="" size="2" />  

                            <label>Piso:</label>
                            <input type="text" id="viaPiso" value="" size="2" /><br/>


                            <label>Localidad:</label>
                            <input type="text" id="localidad" value="" size="13"/>  

                            <label>Codigo Postal:</label>
                            <input type="text" id="codigoPostal" value="" size="5" maxlength="5"/>  

                            <label>Provincia:</label>
                            <select id="provincia">
                                <option value="">          provincia</option>
                                <option value="15">A coruña</option>
                                <option value="1">Álava</option>
                                <option value="2">Albacete</option>
                                <option value="3">Alicante</option>
                                <option value="4">Almería</option>
                                <option value="33">Asturias</option>
                                <option value="5">Ávila</option>
                                <option value="6">Badajoz</option>
                                <option value="7">Baleares</option>
                                <option value="8">Barcelona</option>
                                <option value="9">Burgos</option>
                                <option value="10">Cáceres</option>
                                <option value="11">Cádiz</option>
                                <option value="39">Cantabria</option>
                                <option value="12">Castellón</option>
                                <option value="51">Ceuta</option>
                                <option value="13">Ciudad Real</option>
                                <option value="14">Córdoba</option>
                                <option value="16">Cuenca</option>
                                <option value="99">Extranjero</option>
                                <option value="17">Girona</option>
                                <option value="18">Granada</option>
                                <option value="19">Guadalajara</option>
                                <option value="20">Guipúzcoa</option>
                                <option value="21">Huelva</option>
                                <option value="22">Huesca</option>
                                <option value="23">Jaén</option>
                                <option value="26">La rioja</option>
                                <option value="35">Las palmas</option>
                                <option value="24">León</option>
                                <option value="25">Lleida</option>
                                <option value="27">Lugo</option>
                                <option value="28">Madrid</option>
                                <option value="29">Málaga</option>
                                <option value="52">Melilla</option>
                                <option value="30">Murcia</option>
                                <option value="31">Navarra</option>
                                <option value="32">Ourense</option>
                                <option value="34">Palencia</option>
                                <option value="36">Pontevedra</option>
                                <option value="37">Salamanca</option>
                                <option value="38">Santa cruz de tenerife</option>
                                <option value="40">Segovia</option>
                                <option value="41">Sevilla</option>
                                <option value="42">Soria</option>
                                <option value="43">Tarragona</option>
                                <option value="44">Teruel</option>
                                <option value="45">Toledo</option>
                                <option value="46">Valencia</option>
                                <option value="47">Valladolid</option>
                                <option value="48">Vizcaya</option>
                                <option value="49">Zamora</option>
                                <option value="50">Zaragoza</option>
                            </select>
                        </div> 
                    </div> 


                    <!--Datos de pago-->
                    <div id="divPago" class="divsNo">
                        <p><b>Introduzca los datos de la tarjeta de credito/debito donde se cargara el cobro:</b></p>


                        <label>Titular de la tarjeta:</label><br/>
                        <input type="text" id="titular" value="" size="26" /><br/>


                        <div id="metodosDePago">
                            <label><span  id="alertTipoDeTarjeta">Tipo de tarjeta:</span></label><br/>
                            <label for="visa">
                                <input type="radio" id="visa" name="tarjetas" class="logoTarjetas" value="Visa">
                                <img src="img/pago/visa.gif"></img>
                            </label>

                            <label for="masterCard">
                                <input type="radio" id="masterCard" name="tarjetas" class="logoTarjetas" value="MasterCard">
                                <img src="img/pago/mastercard.gif"></img>
                            </label>

                            <label for="amex">
                                <input type="radio" id="amex" name="tarjetas" class="logoTarjetas" value="American Express">
                                <img src="img/pago/amex.gif"></img>
                            </label>

                            <label for="aurora">
                                <input type="radio" id="aurora" name="tarjetas" class="logoTarjetas" value="Aurora">
                                <img src="img/pago/aurora.gif"></img>
                            </label>

                        </div>


                        <div id="divNumeroTarjeta">
                            <label>Número tarjeta y CVC:</label><br/>
                            <input type="text" id="numeroTarjeta" value="" size="15" maxlength="16" />
                            <input type="text" id="cvcTarjeta" value="" size="2" maxlength="3" /><br/>


                            <select id="mesTarjeta">
                                <option value="">  mes </option>
                            </select>

                            <select id="anioTarjeta">
                                <option value="">  año </option>
                            </select>
                        </div>
                    </div> 
                </div>
            </div> 
        </div>
        

<!-- SCRIPTS -->
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.stellar.min.js"></script>
<script src="../js/wow.min.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<script src="../js/jquery.magnific-popup.min.js"></script>
<script src="../js/smoothscroll.js"></script>
<script src="../js/custom.js"></script>
<script src='../js/main.js'></script>
</body>
</html>