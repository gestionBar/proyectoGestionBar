<%-- 
    Document   : verificarLoginUsuario
    Created on : 26/11/2021, 6:51:03 p. m.
    Author     : Rubie
--%>

<%@page import="co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario"%>
<jsp:useBean id="facade" class="co.edu.co.englishlondonbridgepub.negocio.facade.PersonaUsuarioFacade" scope="session"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String action = "";
    String documento = request.getParameter("documento");
    String contraseña = request.getParameter("contraseña");
    
PersonaUsuario personaUsuario = facade.verificarUsuario(documento, contraseña);
String mensaje = "";
action = "";

if (personaUsuario == null) {
        session.setMaxInactiveInterval(1000000);
        session.setAttribute("personaUsuario", personaUsuario);
}
        
        if (personaUsuario.getRolUsuario().getIdRol() == 1) {
                action = "gestionClientes/indexCliente.html";
            
    }else{
 session.invalidate();
 mensaje = "Error, Documento o Contraseña incorecto";
}


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
