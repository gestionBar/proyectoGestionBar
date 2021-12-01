package co.edu.co.englishlondonbridgepub.datos.dto;

import co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedido;
import co.edu.co.englishlondonbridgepub.datos.dto.PersonaUsuario;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-01T00:44:24")
@StaticMetamodel(Calificacion.class)
public class Calificacion_ { 

    public static volatile SingularAttribute<Calificacion, FacturaPedido> idFactura;
    public static volatile SingularAttribute<Calificacion, Integer> idCalificacion;
    public static volatile SingularAttribute<Calificacion, Integer> valor;
    public static volatile SingularAttribute<Calificacion, PersonaUsuario> idPersona;
    public static volatile SingularAttribute<Calificacion, String> opinion;

}