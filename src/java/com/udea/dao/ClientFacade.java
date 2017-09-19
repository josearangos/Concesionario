/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.dao;

import com.udea.modelo.Client;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author josearangos
 */
@Stateless
public class ClientFacade extends AbstractFacade<Client> implements ClientFacadeLocal {

    @PersistenceContext(unitName = "concesionarioPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ClientFacade() {
        super(Client.class);
    }
    
    
    
    @Override
    public boolean checkId(String id) {
        Query q=em.createQuery("SELECT a FROM Client a WHERE a.id=:id");
        q.setParameter("id", id);
        return q.getResultList().size()>0;
    } 
    
     @Override
     public  boolean checkEmail(String email){
     Query q=em.createQuery("SELECT a FROM Client a WHERE a.email=:email");
     q.setParameter("email", email);
     return q.getResultList().size()>0;
     
     }

    
}
