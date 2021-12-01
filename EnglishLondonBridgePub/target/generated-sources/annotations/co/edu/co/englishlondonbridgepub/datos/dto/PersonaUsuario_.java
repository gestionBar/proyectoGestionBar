package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.Calificacion;
import co.edu.co.englishlondonbridgepub.datos.dto.Mesa;
import co.edu.co.englishlondonbridgepub.datos.dto.Reserva;
import co.edu.co.englishlondonbridgepub.datos.dto.RolUsuario;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(PersonaUsuario.class)
public class PersonaUsuario_ { 

    public static volatile SingularAttribute<PersonaUsuario, Date> fechaNacimiento;
    public static volatile SingularAttribute<PersonaUsuario, String> direccion;
    public static volatile SingularAttribute<PersonaUsuario, String> documento;
    public static volatile ListAttribute<PersonaUsuario, Mesa> mesaList;
    public static volatile SingularAttribute<PersonaUsuario, String> nombre;
    public static volatile SingularAttribute<PersonaUsuario, String> tipoDocumento;
    public static volatile SingularAttribute<PersonaUsuario, RolUsuario> rolUsuario;
    public static volatile ListAttribute<PersonaUsuario, Reserva> reservaList;
    public static volatile SingularAttribute<PersonaUsuario, String> apellido;
    public static volatile SingularAttribute<PersonaUsuario, String> telefono;
    public static volatile ListAttribute<PersonaUsuario, Calificacion> calificacionList;
    public static volatile SingularAttribute<PersonaUsuario, Integer> idPersona;
    public static volatile SingularAttribute<PersonaUsuario, String> email;
    public static volatile SingularAttribute<PersonaUsuario, String> contraseña;

}