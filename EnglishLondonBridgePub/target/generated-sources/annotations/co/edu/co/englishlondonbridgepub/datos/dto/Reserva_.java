package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.EstadoReserva;
import co.edu.co.englishlondonbridgepub.datos.dto.Mesa;
import co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(Reserva.class)
public class Reserva_ { 

    public static volatile SingularAttribute<Reserva, String> descripcion;
    public static volatile SingularAttribute<Reserva, Date> fecha;
    public static volatile SingularAttribute<Reserva, Integer> numeroPersonas;
    public static volatile SingularAttribute<Reserva, Mesa> idMesa;
    public static volatile SingularAttribute<Reserva, Date> hora;
    public static volatile SingularAttribute<Reserva, EstadoReserva> idEstadoReserva;
    public static volatile SingularAttribute<Reserva, Integer> idReserva;
    public static volatile SingularAttribute<Reserva, PersonaUsuario> idPersona;

}