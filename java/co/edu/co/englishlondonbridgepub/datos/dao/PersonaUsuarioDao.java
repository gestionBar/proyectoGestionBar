/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.datos.dao;

import co.edu.co.englishlondonbridgepub.datos.Conexion;
import co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario;
import co.edu.co.englishlondonbridgepub.datos.dto.Validar;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rubie
 */
public class PersonaUsuarioDao implements Validar, Serializable {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;

    @Override
    public int Validar(PersonaUsuario personaUsuario) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String sql = "SELECT * FROM persona_usuario WHERE documento = ?, contraseña = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, personaUsuario.getDocumento());
            ps.setString(2, personaUsuario.getContraseña());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                personaUsuario.setDocumento(rs.getString("documento"));
                personaUsuario.setContraseña(rs.getString("contraseña"));
            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
    }

    /* Método para realizar el guardado de una PersonaUsuario tipo Cliente en la base de Datos*/
    public boolean guardarPersonaCliente(PersonaUsuario persona) {

        boolean rta = false;
        Conexion conexion = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;

        try {

            con = conexion.conectar("PersonaUsuarioDao.guardarPersonaCliente");
            String sql = "INSERT INTO persona_usuario (idPersona, nombre, apellido, tipoDocumento, documento, telefono, direccion, fechaNacimiento, email, contraseña, rolUsuario"
                    + " ) VALUES(NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)";

            ps = con.prepareStatement(sql);

            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getApellido());
            ps.setString(3, persona.getTipoDocumento());
            ps.setString(4, persona.getDocumento());
            ps.setString(5, persona.getTelefono());
            ps.setString(6, persona.getDireccion());
            ps.setDate(7, (Date) persona.getFechaNacimiento());
            ps.setString(8, persona.getEmail());
            ps.setString(9, persona.getContraseña());

            ps.execute();
            rta = true;

            ps.close();
            ps = null;

            con.close();
            con = null;

        } catch (Exception e) {

            e.printStackTrace();
            rta = false;
            ps = null;
            con = null;
        }

        return rta;
    }

    /* Método para traer a las PersonaUsuario tipo Cliente desde la base de Datos  */
    public List<PersonaUsuario> getPersonaCliente() throws Exception {
        List<PersonaUsuario> personas = new ArrayList<PersonaUsuario>();

        Conexion conexion = new Conexion();
        Connection con = conexion.conectar("PersonaUsuarioDao.getPersonasCliente");
        String sql = "Select * FROM persona_usuario WHERE rolUsuario = 1;";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rst = ps.executeQuery();

        while (rst.next()) {
            PersonaUsuario persona = new PersonaUsuario();
            persona.setIdPersona(rst.getInt(1));
            persona.setNombre(rst.getString(2));
            persona.setApellido(rst.getString(3));
            persona.setTipoDocumento(rst.getString(4));
            persona.setDocumento(rst.getString(5));
            persona.setTelefono(rst.getString(6));
            persona.setDireccion(rst.getString(7));
            persona.setFechaNacimiento(rst.getDate(8));
            persona.setEmail(rst.getString(9));
            persona.setContraseña(rst.getString(10));

            personas.add(persona);
        }
        rst.close();
        rst = null;

        ps.close();
        ps = null;

        con.close();
        con = null;

        return personas;
    }

    /* Método para realizar el guardado de una PersonaUsuario tipo empleado en la base de Datos*/
    public boolean guardarPersonaEmpleado(PersonaUsuario persona) {

        boolean rta = false;
        Conexion conexion = new Conexion();
        Connection con = null;
        PreparedStatement ps = null;

        try {

            con = conexion.conectar("PersonaUsuarioDao.guardarPersonaCliente");
            String sql = "INSERT INTO persona_usuario (idPersona, nombre, apellido, tipoDocumento, documento, telefono, direccion, fechaNacimiento, email, contraseña, rolUsuario"
                    + " ) VALUES(NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, 2)";

            ps = con.prepareStatement(sql);

            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getApellido());
            ps.setString(3, persona.getTipoDocumento());
            ps.setString(4, persona.getDocumento());
            ps.setString(5, persona.getTelefono());
            ps.setString(6, persona.getDireccion());
            ps.setDate(7, (Date) persona.getFechaNacimiento());
            ps.setString(8, persona.getEmail());
            ps.setString(9, persona.getContraseña());

            ps.execute();
            rta = true;

            ps.close();
            ps = null;

            con.close();
            con = null;

        } catch (Exception e) {

            e.printStackTrace();
            rta = false;
            ps = null;
            con = null;
        }

        return rta;
    }

    /* Método para traer a las PersonaUsuario tipo Empleado desde la base de Datos  */
    public List<PersonaUsuario> getPersonaEmpleado() throws Exception {
        List<PersonaUsuario> personas = new ArrayList<PersonaUsuario>();

        Conexion conexion = new Conexion();
        Connection con = conexion.conectar("PersonaUsuarioDao.getPersonas");
        String sql = "Select * FROM persona_usuario WHERE rolUsuario = 2;";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rst = ps.executeQuery();

        while (rst.next()) {
            PersonaUsuario persona = new PersonaUsuario();
            persona.setIdPersona(rst.getInt(1));
            persona.setNombre(rst.getString(2));
            persona.setApellido(rst.getString(3));
            persona.setTipoDocumento(rst.getString(4));
            persona.setDocumento(rst.getString(5));
            persona.setTelefono(rst.getString(6));
            persona.setDireccion(rst.getString(7));
            persona.setFechaNacimiento(rst.getDate(8));
            persona.setEmail(rst.getString(9));
            persona.setContraseña(rst.getString(10));

            personas.add(persona);
        }
        rst.close();
        rst = null;

        ps.close();
        ps = null;

        con.close();
        con = null;

        return personas;
    }
    
    

}
   