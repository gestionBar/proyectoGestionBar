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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "mesa")
//@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mesa.findAll", query = "SELECT m FROM Mesa m")})
public class Mesa implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idMesa")
    private Integer idMesa;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "estado")
    private String estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idMesa")
    private List<DetallePedido> detallePedidoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPersona")
    private List<DetallePedido> detallePedidoList1;
    @JoinColumn(name = "idPersona", referencedColumnName = "idPersona")
    @ManyToOne(optional = false)
    private PersonaUsuario idPersona;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idMesa")
    private List<Reserva> reservaList;

    public Mesa() {
    }

    public Mesa(Integer idMesa) {
        this.idMesa = idMesa;
    }

    public Mesa(Integer idMesa, String estado) {
        this.idMesa = idMesa;
        this.estado = estado;
    }

    public Integer getIdMesa() {
        return idMesa;
    }

    public void setIdMesa(Integer idMesa) {
        this.idMesa = idMesa;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    //@XmlTransient
    public List<DetallePedido> getDetallePedidoList() {
        return detallePedidoList;
    }

    public void setDetallePedidoList(List<DetallePedido> detallePedidoList) {
        this.detallePedidoList = detallePedidoList;
    }

    //@XmlTransient
    public List<DetallePedido> getDetallePedidoList1() {
        return detallePedidoList1;
    }

    public void setDetallePedidoList1(List<DetallePedido> detallePedidoList1) {
        this.detallePedidoList1 = detallePedidoList1;
    }

    public PersonaUsuario getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(PersonaUsuario idPersona) {
        this.idPersona = idPersona;
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
        hash += (idMesa != null ? idMesa.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mesa)) {
            return false;
        }
        Mesa other = (Mesa) object;
        if ((this.idMesa == null && other.idMesa != null) || (this.idMesa != null && !this.idMesa.equals(other.idMesa))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.Mesa[ idMesa=" + idMesa + " ]";
    }
    
}
