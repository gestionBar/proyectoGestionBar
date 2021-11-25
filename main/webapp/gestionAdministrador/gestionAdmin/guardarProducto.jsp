<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK"%>
<%@page import="java.sql.Date"%>
<jsp:useBean  id="facade" class="co.edu.co.englishlondonbridgepub.negocio.facade.ProductoMenuFacade" scope="session"/>
<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    String nombreProducto = request.getParameter("nombre");
    String descripcion = request.getParameter("descripcion");
    String precio = request.getParameter("precio");
    String urlImagen = request.getParameter("imagen");
    String categoria = request.getParameter("categoria");
    ProductoMenuPK producto = new ProductoMenuPK(0, nombreProducto);
   // ProductoMenu productoMenu = new ProductoMenu(producto.getIdProductomenu(), descripcion, precio, urlImagen);

    //boolean rta = facade.
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../images/favicon.ico" rel="icon">
        <title>London Bridge</title>
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/loginregistro.css">


    </head>
    <body>
        <form class="form-register" action="../gestionClientes/guardarRegistro.jsp" method="post">
            <h1>Registro Completado</h1>
            <%
                if (rta) {
            %>
            <div class="alert alert-info"><h3>Empleado  registrado correctamente.</h3></div>
            <%
            } else {
            %>
            <div class="alert alert-danger"><h3>Error al registrar  Empleado</h3></div>
            <%
                }
            %>
            <div class="controls">
                <table class="table">
                    <tr>
                        <td>Documento:</td>
                        <td><%= personaUsuario.getTipoDocumento()%> - <%=  personaUsuario.getDocumento()%></td>                    
                    </tr>
                    <tr>
                        <td>Nombre:</td>
                        <td><%= personaUsuario.getNombre()%> - <%=  personaUsuario.getApellido()%></td>                    
                    </tr>     

                    <tr>
                        <td>Contraseña: </td>
                        <td><%= personaUsuario.getContraseña()%></td>                    
                    </tr> 

                </table>
            </div>
            <br>
            <div>        
                <a href="IndexAdmin.html" type="submit" class="section-btn" role="button" aria-pressed="true" style="color: aliceblue;"> Regresar </a>
            </div>
        </form>
    </body>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>