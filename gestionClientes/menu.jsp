<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="facade" class="co.edu.co.englishlondonbridgepub.negocio.facade.ProductoMenuFacade"/>
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
        <link rel="stylesheet" href="../css/loginregistro.css">

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
                        <li><a href="menu.jsp" class="smoothScroll">Menú</a></li>
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
                        <b><a style="color: white;">JAVIER ARTI</a>
                            <br>
                            <a href="historialcliente.html" style="color: white;">Historial</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../index.html" style="color: white;">Cerrar Sesión</a></b>
                    </ul>

                </div>
            </div>
        </section>
        <br>
        <br>
        <!-- MENU BEBIDAS-->
        <section id="menu" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <h1 style="color: white;">Nuesto Menú de Comidas y Bebidas</h1>
                        </div>
                    </div>
                </div>
                <br><br>
                <div>
                    <table class="form-register" style="width: 1200px; background-color: black; margin-top: 0px;">
                        <thead>
                            <tr style="background-color: white">
                                <th style="text-align: center; "><p><b>Nombre Producto y Descripción</b></p></th>
                                <th style="text-align: center; "><p><b>Imagen</b></p></th>
                                <th style="text-align: center; "><p><b>Precio</b></p></th>
                                <th style="text-align: center; "><p><b>Cantidad</b></p></th>
                                <th style="text-align: center; "><p><b>Calcular</b></p></th>
                                <th style="text-align: center; "><p><b>Precio total</b></p></th>
                                <th style="text-align: center; "><p><b>Confirmar &nbsp;</b></p></th>

                            </tr>
                        </thead>
                        <tbody style="color: white;">

                            <%
                                for (ProductoMenu productos : facade.getProductos()) {
                            %>
                            <tr>
                                <td><%= productos.getProductoMenuPK().getNombreProducto()%> <br>
                                    <%= productos.getDescripcion()%></td>
                                <td><img src="<%= productos.getUrlImagen()%>" width="90px" height="130px" alt="alt"/></td>
                                <td><input style="color: black;"  disabled=»disabled» type="text" id="multiplicando" value="<%= productos.getPrecio()%>"></td>
                                <td><input style="color: black;"type="text" id="multiplicador" value=0></td>
                                <td><input style="background-color: black" type="submit" onclick="multiplicar()" value="multiplicar"></td> 
                                <td><input style="color: black;"type="text" id="resultado" disabled=»disabled»></td>
                                <td>
                                    <label><input type="checkbox" id="" value="
                                                  Aguardiente Antioqueño
                                                  Precio c/u: $70000
                                                  Cantidad: 2
                                                  Total Precio: $140000
                                                  " class="opciones"></label><br>
                                </td>
                            </tr> 
                            <%
                                }
                            %>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>TOTAL:</td>
                                <td><input style="color: black;"type="text" id="resultado" disabled=»disabled»></td>
                            </tr> 
                        </tbody>
                    </table>


                    <div class="posts" id="product">

                        <form class="form-register" action="https://formsubmit.co/jdaiosdhawdnoka@gmail.com" method="POST">
                            <h4>FORMULARIO DE RESERVA<br>
                                COMIDAS Y/O BEBIDAS</h4>
                            <label for="start">A nombre de:</label> <input class="controls"
                                                                           type="text" name="nombre" id="nombre" placeholder="Nombre">

                            <label for="start">Fecha de reserva:</label> <input class="controls"
                                                                                type="date" name="fechaNacimiento" id="fechaNacimiento"> <label
                                                                                for="start">Hora de reserva:</label> <br> <input
                                                                                class="controls" type="time" name="hora" value="05:00" step="0"><div>
                                <label for="start">Correo Electronico:</label>                                
                                <input class="controls" type="email" for="email" name="email" id="email" placeholder="Ingrese su Email">

                                <label for="inputState">Selecciona Mesas disponibles </label> 
                                <select id="inputState"
                                        class="controls">
                                    <option selected class="controls">Mesa 1</option>
                                    <option>Mesa 2</option>
                                    <option>Mesa 3</option>
                                    <option>Mesa 4</option>
                                    <option>Mesa 5</option>
                                    <option>Mesa 6</option>
                                    <option>Mesa 7</option>
                                    <option>Mesa 8</option>
                                    <option>Mesa 9</option>
                                    <option>Mesa 10</option>
                                </select>
                                <label for="start">Pedido Asignado:</label> 
                                <br>
                                <textarea class="areaTexto" rows="8" cols="80" for="descripcion" name="descripcion" id="descripcion"></textarea>
                            </div>                                                           
                            <button onclick="location.href = 'menu.jsp'" type="submit" class="botons" >Enviar</button>
                            <a href="menu.jsp"  type="sublit"> <input class="botons" type="button" value="Olvidar" ></a>
                        </form>
                        <br><br><br>
                    </div>
                    </section>
                    <br><br><br>


                    <!-- FOOTER -->
                    <footer id="footer" data-stellar-background-ratio="0.5" style="background: black;">
                        <div class="container" id="contact">
                            <div class="row">

                                <div class="col-md-3 col-sm-8">
                                    <div class="footer-info">
                                        <div class="section-title">
                                            <h2 class="wow fadeInUp" data-wow-delay="0.2s" style="color: white;">Encuentranos</h2>
                                        </div>
                                        <address class="wow fadeInUp" data-wow-delay="0.4s">
                                            <p>
                                                Colombia <br>Norte de Santander, Cúcuta <br>Av. 1 Este
                                                #16 - 24 Caobos
                                            </p>
                                        </address>
                                    </div>
                                </div>

                                <div class="col-md-3 col-sm-8">
                                    <div class="footer-info">
                                        <div class="section-title">
                                            <h2 class="wow fadeInUp" data-wow-delay="0.2s" style="color: white;">Reservas</h2>
                                        </div>
                                        <address class="wow fadeInUp" data-wow-delay="0.4s">
                                            <p>318 6245 7999</p>
                                            <p>
                                                <a href="https://www.google.com/intl/es-419/gmail/about/"
                                                   target="_blank">londonbridge@gmail.com</a>
                                            </p>
                                        </address>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-8">
                                    <div class="footer-info footer-open-hour">
                                        <div class="section-title">
                                            <h2 class="wow fadeInUp" data-wow-delay="0.2s" style="color: white;">Horario</h2>
                                        </div>
                                        <div class="wow fadeInUp" data-wow-delay="0.4s">
                                            <p>Lunes: Cerrado</p>
                                            <div>
                                                <strong>Martes a Sabados</strong>
                                                <p>5:00 PM - 1:00 AM</p>
                                            </div>
                                            <div>
                                                <strong>Domingos</strong>
                                                <p>5:00 PM - 12:00 AM</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2 col-sm-4">
                                    <ul class="wow fadeInUp social-icon" data-wow-delay="0.4s">
                                        <li><a href="https://www.facebook.com/London-Bridge-Pub-121066448584216" target="_blank"
                                               class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                        <li><a href="https://www.instagram.com/londonbridgepub/" target="_blank"
                                               class="fa fa-instagram"></a></li>
                                        <li><a href="https://www.google.com/webhp?authuser=1" target="_blank" class="fa fa-google"></a>
                                        </li>
                                    </ul>

                                    <div class="wow fadeInUp copyright-text" data-wow-delay="0.8s">
                                        <p>
                                            <br>Copyright &copy; 2020 <br>London Bridge Pub
                                    </div>
                                </div>

                            </div>
                        </div>
                    </footer>

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
                    <script>
                                function multiplicar() {
                                    m1 = document.getElementById("multiplicando").value;
                                    m2 = document.getElementById("multiplicador").value;
                                    r = m1 * m2;
                                    document.getElementById("resultado").value = r;
                                }
                    </script>

                    <script>
                        $(document).ready(function () {
                            $('.fantasma').click(function () {
                                if ($(this).is(':checked')) {
                                    $('.contentM').css('display', 'block');
                                } else {
                                    $('.contentM').css('display', 'none');
                                }
                            });
                        });
                    </script>
                    <script>
                        let opciones = document.querySelector(".opciones")
                        let textoArea = document.querySelector(".areaTexto")

                        opciones.addEventListener("change", (event) => {
                            let opcion = event.target.value
                            textoArea.innerText = opcion
                        })
                    </script>
                    </body>
                    </html>