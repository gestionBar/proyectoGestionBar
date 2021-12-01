<%-- 
    Document   : guardarRegistro
    Created on : 21/11/2021, 11:22:43 p. m.
    Author     : Rubie
--%>

<%@page import="java.sql.Date"%>
<jsp:useBean  id="facade" class="co.edu.co.englishlondonbridgepub.negocio.facade.PersonaUsuarioFacade" scope="session"/>
<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String tipoDoc = request.getParameter("tipoDoc");
    String numDoc = request.getParameter("numDoc");
    String documento = request.getParameter("documento");
    String telefono = request.getParameter("telefono");
    String direccion = request.getParameter("direccion");
    String fechaNac = request.getParameter("fechaNac");
    String email = request.getParameter("email");
    String contraseña = request.getParameter("contraseña");

    Date fNac = Date.valueOf(fechaNac);

    PersonaUsuario personaUsuario = new PersonaUsuario(null, nombre, apellido, tipoDoc, documento, telefono, direccion, fNac, email, contraseña);

    boolean rta = facade.guardarPersonaCliente(personaUsuario);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../images/favicon.ico" rel="icon">
        <title>London Bridge</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/loginregistro.css">
        
        
    </head>
    <body>
        <form class="form-register" action="guardarRegistro.jsp" method="post">
            <h1>Registro Completado</h1>
        <%
            if (rta) {
        %>
        <div class="alert alert-info"><h3>Cliente registrado correctamente.</h3></div>
        <%
        } else {
        %>
        <div class="alert alert-danger"><h3>Error al registrar  Cliente</h3></div>
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
            <a href="../loginUsuarios.jsp" type="submit" class="section-btn" role="button" aria-pressed="true" style="color: aliceblue;"> Iniciar sesión </a>
        </div>
        </form>
    </body>
        <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</html>
