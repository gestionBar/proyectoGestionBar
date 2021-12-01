/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.datos.dto;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
/*import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;*/

/**
 *
 * @author Rubie
 */
@Entity
@Table(name = "estado_reserva")
//@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EstadoReserva.findAll", query = "SELECT e FROM EstadoReserva e")})
public class EstadoReserva implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idEstadoReserva")
    private Integer idEstadoReserva;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idEstadoReserva")
    private List<Reserva> reservaList;

    public EstadoReserva() {
    }

    public EstadoReserva(Integer idEstadoReserva) {
        this.idEstadoReserva = idEstadoReserva;
    }

    public EstadoReserva(Integer idEstadoReserva, String nombre, String descripcion) {
        this.idEstadoReserva = idEstadoReserva;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public Integer getIdEstadoReserva() {
        return idEstadoReserva;
    }

    public void setIdEstadoReserva(Integer idEstadoReserva) {
        this.idEstadoReserva = idEstadoReserva;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    //@XmlTransient
    public List<Reserva> getReservaList() {
        return reservaList;
    }

    public void setReservaList(List<Reserva> reservaList) {
        this.reservaList = reservaList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEstadoReserva != null ? idEstadoReserva.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EstadoReserva)) {
            return false;
        }
        EstadoReserva other = (EstadoReserva) object;
        if ((this.idEstadoReserva == null && other.idEstadoReserva != null) || (this.idEstadoReserva != null && !this.idEstadoReserva.equals(other.idEstadoReserva))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.EstadoReserva[ idEstadoReserva=" + idEstadoReserva + " ]";
    }
    
}
