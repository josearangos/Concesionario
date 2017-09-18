/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.modelo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author josearangos
 */
@Entity
@Table(name = "sale")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sale.findAll", query = "SELECT s FROM Sale s")
    , @NamedQuery(name = "Sale.findByClient", query = "SELECT s FROM Sale s WHERE s.salePK.client = :client")
    , @NamedQuery(name = "Sale.findByCar", query = "SELECT s FROM Sale s WHERE s.salePK.car = :car")
    , @NamedQuery(name = "Sale.findBySaleDate", query = "SELECT s FROM Sale s WHERE s.saleDate = :saleDate")})
public class Sale implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected SalePK salePK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sale_date")
    @Temporal(TemporalType.DATE)
    private Date saleDate;
    @JoinColumn(name = "client", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Client client1;
    @JoinColumn(name = "car", referencedColumnName = "plate", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Car car1;

    public Sale() {
    }

    public Sale(SalePK salePK) {
        this.salePK = salePK;
    }

    public Sale(SalePK salePK, Date saleDate) {
        this.salePK = salePK;
        this.saleDate = saleDate;
    }

    public Sale(String client, String car) {
        this.salePK = new SalePK(client, car);
    }

    public SalePK getSalePK() {
        return salePK;
    }

    public void setSalePK(SalePK salePK) {
        this.salePK = salePK;
    }

    public Date getSaleDate() {
        return saleDate;
    }

    public void setSaleDate(Date saleDate) {
        this.saleDate = saleDate;
    }

    public Client getClient1() {
        return client1;
    }

    public void setClient1(Client client1) {
        this.client1 = client1;
    }

    public Car getCar1() {
        return car1;
    }

    public void setCar1(Car car1) {
        this.car1 = car1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (salePK != null ? salePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sale)) {
            return false;
        }
        Sale other = (Sale) object;
        if ((this.salePK == null && other.salePK != null) || (this.salePK != null && !this.salePK.equals(other.salePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ude.modelo.Sale[ salePK=" + salePK + " ]";
    }
    
}
