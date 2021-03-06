/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.dao;

import com.udea.modelo.Car;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author josearangos
 */
@Stateless
public class CarFacade extends AbstractFacade<Car> implements CarFacadeLocal {

    @PersistenceContext(unitName = "concesionarioPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CarFacade() {
        super(Car.class);
    }

    @Override
    public boolean checkPlate(String plate) {
        Query q=em.createQuery("SELECT c FROM Car c WHERE c.plate=:plate");
        q.setParameter("plate", plate);
        return q.getResultList().size()>0;
    }
    
}
