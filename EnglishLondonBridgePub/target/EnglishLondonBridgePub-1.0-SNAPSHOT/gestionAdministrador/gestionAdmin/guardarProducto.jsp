<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.Categoria"%>
<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK"%>
<%@page import="java.sql.Date"%>
<jsp:useBean  id="facade" class="co.edu.co.englishlondonbridgepub.negocio.facade.ProductoMenuFacade"/>
<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    String nombreProducto = request.getParameter("nombre");
    String descripcion = request.getParameter("descripcion");
    String precio = request.getParameter("precio");
    String urlImagen = request.getParameter("imagen");
    String categoria = request.getParameter("categoria");
    
   
    int precioProducto = Integer.parseInt(precio);
    int categoriaP = Integer.parseInt(categoria);
    
    Categoria categoriaPr = new Categoria(categoriaP, "", "");
    ProductoMenuPK  producto = new ProductoMenuPK(null, nombreProducto);
    ProductoMenu productoMenu = new ProductoMenu(producto, descripcion, precioProducto, urlImagen,  categoriaPr);
     
    boolean rta = facade.guardarProductos(productoMenu, producto, categoriaPr); 
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
            <div class="alert alert-info"><h3>Producto  registrado correctamente.</h3></div>
            <%
            } else {
            %>
            <div class="alert alert-danger"><h3>Error al registrar  el Producto</h3></div>
            <%
                }
            %>
            <div class="controls">
                <table class="table">
                    <tr>
                        <td>Nombre: </td>
                        <td><%= producto.getNombreProducto()%></td>                    
                    </tr>
                    <tr>
                        <td>Descripción:</td>
                        <td><%= productoMenu.getDescripcion()%> </td>                    
                    </tr>     

                    <tr>
                        <td>Precio: </td>
                        <td><%= productoMenu.getPrecio()%></td>                    
                    </tr> 
                     <tr>
                        <td>Categoría </td>
                        <td><%= request.getParameter("categoria")%></td>                    
                    </tr>  

                </table>
            </div>
            <br>
            <div>        
                <a href="productos.jsp" type="submit" class="section-btn" role="button" aria-pressed="true" style="color: aliceblue;"> Regresar </a>
            </div>
        </form>
    </body>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>