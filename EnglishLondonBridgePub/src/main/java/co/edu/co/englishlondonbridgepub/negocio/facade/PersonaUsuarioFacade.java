/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.negocio.facade;

import co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario;
import co.edu.co.englishlondonbridgepub.negocio.gestionClientes.PersonaUsuarioNegocio;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class PersonaUsuarioFacade {

    PersonaUsuarioNegocio personaUsuarioNegocio;

    public PersonaUsuarioFacade() {
        personaUsuarioNegocio = new PersonaUsuarioNegocio();
    }
    
     /*Método que hace la verificación para el inicio de sesión en la aplicación*/
public PersonaUsuario verificarUsuario(String documento, String contraseña ){
    return personaUsuarioNegocio.verificarUsuario(documento, contraseña);
}
    
 

    /* Método que retorna si se registró un cliente en la Base de Datos*/
    public boolean guardarPersonaCliente(PersonaUsuario personaUsuario) {
        return personaUsuarioNegocio.guardarPersonaCliente(personaUsuario);
    }

    /*Método que retorna la lista de clientes registrados en la base de datos*/
    public List<PersonaUsuario> getPersonaCliente() {
        return personaUsuarioNegocio.getPersonaCliente();
    }

    /* Método que retorna si se registró un Empleado en la Base de Datos*/
    public boolean guardarPersonaEmpleado(PersonaUsuario personaUsuario) {
        return personaUsuarioNegocio.guardarPersonaEmpleado(personaUsuario);
    }

    /*Método que retorna la lista de empleados registrados en la base de datos*/
    public List<PersonaUsuario> getPersonaEmpleado() {
        return personaUsuarioNegocio.getPersonaEmpleado();
    }

}