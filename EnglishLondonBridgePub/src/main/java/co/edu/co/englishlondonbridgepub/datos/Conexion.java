/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.datos;

import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;
import sun.java2d.loops.GraphicsPrimitive;
//import sun.jvm.hotspot.oops.java_lang_Class;

public class Conexion {

    long tiempo_inicio = -1;
    long tiempo_final = 0;

    private final static String url = "jdbc:mysql://localhost:3306/londonbridgepub";
    private String usuario = "root";
    private String password = "";
    private final static String driver = "com.mysql.cj.jdbc.Driver";
    private String error;

    public String ruta_logs = "";

    private Connection con;
    private CallableStatement cs;
    private PreparedStatement ps;
    private ResultSet rst;

    public Conexion() {

        super();
    }

    public String getUsuraio() {
        return usuario;
    }

    public void setUsuraio(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public Connection conectar(String conectaDesde) throws java.sql.SQLException {
        try {
            Class.forName(driver);
            this.con =  DriverManager.getConnection(url, usuario, password);

        } catch (Exception e) {
            e.printStackTrace();
            //this.escribirLogs("Conexion", "conectar()", e.toString());
        }
        return this.con;
    }
 
    public void setConection(Connection conex) {
        this.con = conex;
    }

    public void cerrarConexion() {

        try {

            if (this.rst != null) {
                this.rst.close();
            }
            if (this.rst != null) {
                this.ps.close();
            }
            if (this.rst != null) {
                this.cs.close();
            }
            this.rst = null;
            this.ps = null;
            this.cs = null;

        } catch (Exception e) {
            //this.escribirLogs("Conexion", "conectar()", e.toString());
        }
    }

    public Connection getConnection() {
        return this.con;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Conexion)) {
            return false;
        }
        final Conexion other = (Conexion) obj;
        if (password == null) {
            if (other.password != null) {
                return false;
            }

        } else if (!password.equals(other.password)) {
            return false;
        }
        if (usuario == null) {
            if (other.usuario != null) {
                return false;
            }
        } else if (!usuario.equals(other.usuario)) {
            return false;
        }
        return true;
    }

}
