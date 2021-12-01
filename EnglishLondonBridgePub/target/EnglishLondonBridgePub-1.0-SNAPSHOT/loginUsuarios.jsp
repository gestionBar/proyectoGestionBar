<%-- 
    Document   : loginUsuarios
    Created on : 22/11/2021, 1:50:24 a. m.
    Author     : Rubie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="images/favicon.ico" rel="icon">
        <title>London Bridge</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/loginregistro.css">
    </head>
    <body>
        <form class="form-register" action="verificarLoginUsuario.jsp" method="post"  id="login-form">
            <h2><b>INICIAR SESIÓN</b></h2>
            <br>
            <div class="login100-pic">
                <img src="images/about-image.jpg" alt="IMG">
            </div>
            <br>
            <br>
            <input class="controls" type="text" name="documento" id="documento" placeholder="Número de Documento" >
            <input class="controls" type="text" name="clave" id="clave" placeholder="Contraseña" >

            <input class="botons" type="submit" name="accion" value="Ingresar">
            
            
            
            <p><a href="gestionAdministrador/gestionAdmin/IndexAdmin.html">Cuenta como administrador</a></p> 
            <p><a href="gestionClientes/IndexCliente.html">Cuenta como cliente</a></p> 
            <p><a href="gestionAdministrador/gestionEmpleado/indexEmpleado.html">Cuenta como empleado</a></p> 
            <p><a href="gestionClientes/registroCliente.jsp">¿No tienes Cuenta?</a></p> 
            <br>
            <a href="index.html" type="submit" class="section-btn" role="button" aria-pressed="true" style="color: aliceblue;">Regresar </a>

        </form>

        <br><br>
        <script src="js/jquery.js"></script>
        <script src="js/main.js"></script>
        <script src="sjs/bootstrap.min.js"></script>
    </body>
</html>