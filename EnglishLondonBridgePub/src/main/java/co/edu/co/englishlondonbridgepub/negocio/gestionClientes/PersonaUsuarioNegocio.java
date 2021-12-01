/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.negocio.gestionClientes;

import co.edu.co.englishlondonbridgepub.datos.dao.PersonaUsuarioDao;
import co.edu.co.englishlondonbridgepub.datos.dto.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class PersonaUsuarioNegocio {

    private PersonaUsuarioDao personaUsuarioDao;

    public PersonaUsuarioNegocio() {
        personaUsuarioDao = new PersonaUsuarioDao();
    }

    /*Método que hace la verificación para el inicio de sesión en la aplicación*/
    public PersonaUsuario verificarUsuario(String documento, String contraseña) {
        PersonaUsuario personaUsuario; 
        
        try {
            personaUsuario = personaUsuarioDao.verificarUsuario(documento, contraseña);
        } catch (Exception e) {
            e.printStackTrace();
            personaUsuario  = null;
        }
        return personaUsuario;
    }
    
    /* Método que retorna si se registró un cliente en la Base de Datos*/
    public boolean guardarPersonaCliente(PersonaUsuario persona) {
        boolean rta = personaUsuarioDao.guardarPersonaCliente(persona);
        return rta;
    }

    /*Método que retorna la lista de clientes registrados en la base de datos*/
    public List<PersonaUsuario> getPersonaCliente() {
        List<PersonaUsuario> personausuarioCliente = new ArrayList<PersonaUsuario>();

        try {
            personausuarioCliente = personaUsuarioDao.getPersonaCliente();

        } catch (Exception e) {
            e.printStackTrace();
            personausuarioCliente = null;
        }
        return personausuarioCliente;
    }

    /* Método que retorna si se registró un Empleado  en la Base de Datos*/
    public boolean guardarPersonaEmpleado(PersonaUsuario persona) {
        boolean rta = personaUsuarioDao.guardarPersonaEmpleado(persona);
        return rta;
    }

    /*Método que retorna la lista de Empleados registrados en la base de datos*/
    public List<PersonaUsuario> getPersonaEmpleado() {
        List<PersonaUsuario> personausuarioEmpleado = new ArrayList<PersonaUsuario>();

        try {
            personausuarioEmpleado = personaUsuarioDao.getPersonaEmpleado();

        } catch (Exception e) {
            e.printStackTrace();
            personausuarioEmpleado = null;
        }
        return personausuarioEmpleado;
    }

    
}