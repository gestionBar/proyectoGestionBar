<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="facade" class="co.edu.co.englishlondonbridgepub.negocio.facade.ProductoMenuFacade"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Productos</title>
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
        <-- <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/font-awesome.min.css">
        <link rel="stylesheet" href="../../css/magnific-popup.css">
        <link rel="stylesheet" href="../../css/index.css"> 
        <link href="../../css/dataTable/jquery.dataTables.min.css" rel="stylesheet"> 
        <script src="../../js/jsdos/bootstrap.min.js"></script>
        <script src="../../js/jsdos/jquery-3.2.1.min.js"></script>
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
                    <a href="../../index.html" class="navbar-brand">London <span>.</span>Bridge</a>
                </div>
                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                        <li><a href="productos.jsp" class="smoothScroll">Lista Productos</a></li>
                        <li><a href="clientes.jsp" class="smoothScroll">Lista Clientes</a></li>
                        <li><a href="empleados.jsp" class="smoothScroll">Lista Empleados</a></li>
                        <li><a href="../../gestionClientes/eventos.html" class="smoothScroll">Eventos</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg" style="color:#001aff">
                        <path
                            d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z" />
                        <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                        <path fill-rule="evenodd"
                              d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z" />
                        </svg>
                        <b><a style="color: white;">NOMBRE DEL ADMIN</a>
                            <br>
                            <a href="#" style="color: white;">Configuración</a>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <a href="../../index.html" style="color: white;">Cerrar Sesión</a></b>
                    </ul>

                </div>
            </div>
        </section>
        <h1> registro producto</h1>
        <br><br>

        <div class="container text-left">
            <a href="registroProducto.jsp" type="submit" class="section-btn" role="button" aria-pressed="true">Nuevo Producto </a>

        </div>
        <div class="container">
            <h1 style="text-align: center;">Lista Productos</h1>
            <div>
                <table id="tblAsistentes" class="table"">
                    <thead>
                        <tr>
                            <th>Nombre Producto</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                            <th>Imagen</th>
                            <th>Categoría</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody style="color: black;">

                        <%
                            for (ProductoMenu productos : facade.getProductos()) {
                        %>
                        <tr>
                            <td><%= productos.getProductoMenuPK().getNombreProducto()%></td>
                            <td><%= productos.getDescripcion()%></td>
                            <td>$ <%= productos.getPrecio()%></td>
                            <td> <img src="<%= productos.getUrlImagen()%>" width="90px" height="130px" alt="alt"/></td>

                            <td><%= productos.getCategoriaProducto().getNombre()%></td>
                            <td>
                                
                                <a href="editarProducto.jsp"> Editar </a>&nbsp
                                <a href="borrarProducto.jsp"> Borrar </a>
                                
                            </td>
                        </tr> 
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <div>        
                <input type="button" value="Home" onclick="location.href = '../index.html'">
            </div>
        </div>
        <script src="../../js/jsdos/dataTable/jquery.dataTables.min.js"></script>
        <script type="text/javascript">
                    $(document).ready(function () {
                        $('#tblAsistentes').DataTable();
                    });
        </script>
    </body>
</html>
