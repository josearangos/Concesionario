/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ude.dao;

import com.ude.modelo.Sale;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
    
}
