/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.datos.dto;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Rubie
 */
@Embeddable
public class FacturaPedidoPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "idFactura")
    private int idFactura;
    @Basic(optional = false)
    @NotNull
    @Column(name = "consecutivo")
    private int consecutivo;

    public FacturaPedidoPK() {
    }

    public FacturaPedidoPK(int idFactura, int consecutivo) {
        this.idFactura = idFactura;
        this.consecutivo = consecutivo;
    }

    public int getIdFactura() {
        return idFactura;
    }

    public void setIdFactura(int idFactura) {
        this.idFactura = idFactura;
    }

    public int getConsecutivo() {
        return consecutivo;
    }

    public void setConsecutivo(int consecutivo) {
        this.consecutivo = consecutivo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idFactura;
        hash += (int) consecutivo;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FacturaPedidoPK)) {
            return false;
        }
        FacturaPedidoPK other = (FacturaPedidoPK) object;
        if (this.idFactura != other.idFactura) {
            return false;
        }
        if (this.consecutivo != other.consecutivo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.FacturaPedidoPK[ idFactura=" + idFactura + ", consecutivo=" + consecutivo + " ]";
    }
    
}
