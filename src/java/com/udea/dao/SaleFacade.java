/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.dao;

import com.udea.modelo.Sale;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author josearangos
 */
@Stateless
public class SaleFacade extends AbstractFacade<Sale> implements SaleFacadeLocal {

    @PersistenceContext(unitName = "concesionarioPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SaleFacade() {
        super(Sale.class);
    }

    @Override
    public boolean checkPlate(String car) {
        Query q=em.createQuery("SELECT s FROM Sale s WHERE s.salePK.car = :car");
        q.setParameter("car", car);
        return q.getResultList().size()>0;
    }
    
}
