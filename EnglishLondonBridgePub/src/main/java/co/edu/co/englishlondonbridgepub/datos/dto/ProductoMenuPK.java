/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package co.edu.co.englishlondonbridgepub.datos.dto;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Rubie
 */
@Embeddable
public class ProductoMenuPK implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idProducto_menu")
    private Integer idProductomenu;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "nombreProducto")
    private String nombreProducto;

    public ProductoMenuPK() {
    }

    public ProductoMenuPK(Integer idProductomenu, String nombreProducto) {
        this.idProductomenu = idProductomenu;
        this.nombreProducto = nombreProducto;
    }

    public Integer getIdProductomenu() {
        return idProductomenu;
    }

    public void setIdProductomenu(Integer idProductomenu) {
        this.idProductomenu = idProductomenu;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idProductomenu;
        hash += (nombreProducto != null ? nombreProducto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductoMenuPK)) {
            return false;
        }
        ProductoMenuPK other = (ProductoMenuPK) object;
        if (this.idProductomenu != other.idProductomenu) {
            return false;
        }
        if ((this.nombreProducto == null && other.nombreProducto != null) || (this.nombreProducto != null && !this.nombreProducto.equals(other.nombreProducto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "co.edu.co.englishlondonbridgepub.datos.dto.ProductoMenuPK[ idProductomenu=" + idProductomenu + ", nombreProducto=" + nombreProducto + " ]";
    }

}
