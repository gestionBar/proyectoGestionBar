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
     
    boolean rta = facade.borrarProducto(productoMenu, producto, categoriaPr); 
%>

</head>
    <body>
        <form class="form-register" action="" method="post">
            <h1>Producto Borrado</h1>
            <%
                if (rta) {
            %>
            <div class="alert alert-info"><h3>Producto borrado correctamente.</h3></div>
            <%
            } else {
            %>
            <div class="alert alert-danger"><h3>Error al borrar el Producto</h3></div>
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