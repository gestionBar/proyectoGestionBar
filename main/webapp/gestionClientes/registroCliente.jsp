<%-- 
    Document   : registroCliente
    Created on : 21/11/2021, 11:41:24 p. m.
    Author     : Rubie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h2><b>FORMULARIO DE REGISTRO</b></h2>

            <input class="controls" type="text" for="nombre" name="nombre" id="nombre"  required placeholder=" Ingrese su Nombre" >
            <input class="controls" type="text" for="apellido" name="apellido" id="apellido" required placeholder=" Ingrese su Apellido" > 
           
           <div class="controls">
            <div class="form-group">
                   <label for="tipoDoc" >Tipo de documento</label>
                    <select id="tipoDoc" for="tipoDoc" name="tipoDoc" required class="controls">
                        <option value="CC" selected>Cédula de ciudadania</option>
                        <option value="CE">Cédula de extranjeria</option>
                        <option value="TI">Tarjeta de identidad</option>
                        <option value="RC">Registro civil</option>
                        <option value="PT">Pasaporte</option>
                    </select>
                </div>
            </div>
            <input class="controls" type="text" for="documento" name="documento" id="docuemnto" required placeholder="Ingrese su Número de documento" >
            <input class="controls" type="text" for="telefono" name="telefono" id="telefono" required  placeholder="Ingrese su número de Telefono" >
            <input class="controls" type="text" for="direccion" name="direccion" id="direccion" required  placeholder="Ingrese su Direccion" >
            <div class="controls">
                <label for="fechaNac" >Fecha de Nacimiento</label>
                <input type="date" for="fechaNac" name="fechaNac" id="fechaNac"  required class="controls">
            </div>
            <input class="controls" type="email" for="email" name="email" id="email" placeholder="Ingrese su Email">
            <input class="controls" type="text" for="contraseña" name="contraseña" id="contraseña" placeholder="Ingrese su Contraseña" >
            <br>
            <p>Estoy de acuerdo con <b><a href="#"> Términos y Condiciones</a></b></p>
            <br>
            <input class="botons" type="submit" value="Registrar">
            <p><a href="../login.jsp">¿Ya tienes Cuenta?</a></p> 
            <a href="../index.html" type="submit" class="section-btn" role="button"
               aria-pressed="true" style="color: aliceblue;">Regresar </a>
        </form>
    </body>
</html>
