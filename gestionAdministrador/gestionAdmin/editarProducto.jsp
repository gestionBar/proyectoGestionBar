<jsp:useBean id="facade" class="co.edu.co.englishlondonbridgepub.negocio.facade.ProductoMenuFacade"/>
<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK"%>
<%@page import="java.sql.Date"%>
<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenu"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../images/favicon.ico" rel="icon">
        <title>Editar Producto</title>
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/loginregistro.css">
    </head>
    <body>
        <form class="form-register" action="productoEditado.jsp" method="post">
            <h2><b> EDITAR PRODUCTO</b></h2>
      
           <% 
               for (ProductoMenu producto : facade.getProductos()) {
           %>
           
           <%
             }
           %>
            
            <input class="controls" type="text" for="nombre" name="nombre" id="nombre" required placeholder="Ingrese el nombre">

            <textarea rows="8" cols="20" class="controls" type="text" for="descripcion" name="descripcion" id="descripcion" required placeholder=" Ingrese su Descripcion" ></textarea>

            <input class="controls" type="text" for="precio" name="precio" id="precio" required placeholder="Ingrese el precio" >

            <input class="controls" type="text" for="imagen" name="imagen" id="imagen" required placeholder="Ingrese URL de la imagen" >

            <div class="controls">
                <label for="categorias">Categoría </label>
                <select id="categoria" name="categoria" required class="form-control">
                    <%
                        for (Categoria categoria : facade.getCategorias()) {

                    %>
                    <option value="<%= categoria.getId()%>" > <%= categoria.getNombre()%>  </option>
                    <%
                        }
                    %>
                </select>
            </div>


            <input class="botons" type="submit" value="Actualizar">  
            <br><br>
            <a href="IndexAdmin.html" type="submit" class="section-btn" role="button" aria-pressed="true" style="color: aliceblue;">Regresar </a>
        </form>
    </body>
</html>
