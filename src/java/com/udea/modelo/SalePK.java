/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author josearangos
 */
@Embeddable
public class SalePK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "client")
    private String client;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 6)
    @Column(name = "car")
    private String car;

    public SalePK() {
    }

    public SalePK(String client, String car) {
        this.client = client;
        this.car = car;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getCar() {
        return car;
    }

    public void setCar(String car) {
        this.car = car;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (client != null ? client.hashCode() : 0);
        hash += (car != null ? car.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SalePK)) {
            return false;
        }
        SalePK other = (SalePK) object;
        if ((this.client == null && other.client != null) || (this.client != null && !this.client.equals(other.client))) {
            return false;
        }
        if ((this.car == null && other.car != null) || (this.car != null && !this.car.equals(other.car))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ude.modelo.SalePK[ client=" + client + ", car=" + car + " ]";
    }
    
}
