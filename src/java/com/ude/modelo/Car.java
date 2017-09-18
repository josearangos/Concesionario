/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ude.modelo;

import java.io.Serializable;
import java.util.Collection;
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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author josearangos
 */
@Entity
@Table(name = "car")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Car.findAll", query = "SELECT c FROM Car c")
    , @NamedQuery(name = "Car.findByPlate", query = "SELECT c FROM Car c WHERE c.plate = :plate")
    , @NamedQuery(name = "Car.findByBrand", query = "SELECT c FROM Car c WHERE c.brand = :brand")
    , @NamedQuery(name = "Car.findByModel", query = "SELECT c FROM Car c WHERE c.model = :model")
    , @NamedQuery(name = "Car.findByPrice", query = "SELECT c FROM Car c WHERE c.price = :price")
    , @NamedQuery(name = "Car.findByPhoto", query = "SELECT c FROM Car c WHERE c.photo = :photo")})
public class Car implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 6)
    @Column(name = "plate")
    private String plate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "brand")
    private String brand;
    @Basic(optional = false)
    @NotNull
    @Column(name = "model")
    private int model;
    @Basic(optional = false)
    @NotNull
    @Column(name = "price")
    private int price;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "photo")
    private String photo;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "car1")
    private Collection<Sale> saleCollection;

    public Car() {
    }

    public Car(String plate) {
        this.plate = plate;
    }

    public Car(String plate, String brand, int model, int price, String photo) {
        this.plate = plate;
        this.brand = brand;
        this.model = model;
        this.price = price;
        this.photo = photo;
    }

    public String getPlate() {
        return plate;
    }

    public void setPlate(String plate) {
        this.plate = plate;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getModel() {
        return model;
    }

    public void setModel(int model) {
        this.model = model;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @XmlTransient
    public Collection<Sale> getSaleCollection() {
        return saleCollection;
    }

    public void setSaleCollection(Collection<Sale> saleCollection) {
        this.saleCollection = saleCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (plate != null ? plate.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Car)) {
            return false;
        }
        Car other = (Car) object;
        if ((this.plate == null && other.plate != null) || (this.plate != null && !this.plate.equals(other.plate))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ude.modelo.Car[ plate=" + plate + " ]";
    }
    
}
