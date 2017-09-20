/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.dao.CarFacadeLocal;
import com.udea.dao.ClientFacadeLocal;
import com.udea.dao.SaleFacadeLocal;
import com.udea.modelo.Car;
import com.udea.modelo.Client;
import com.udea.modelo.Sale;
import com.udea.modelo.SalePK;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author josearangos
 */
public class saleServlet extends HttpServlet {

    @EJB
    private SaleFacadeLocal saleFacade;
    @EJB
    private ClientFacadeLocal clientFacade;
    @EJB
    private CarFacadeLocal carFacade;

    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            String action = request.getParameter("action");
            String url = "presentation/index.jsp";
            switch (action) {
                case "new":
                    String idClient = request.getParameter("ide");
                    String plateCar = request.getParameter("plate");
                    boolean checkId = clientFacade.checkId(idClient);
                    boolean checkPlate = carFacade.checkPlate(plateCar);
                    if (!checkId) {
                        url = "presentation/sale/newSale.jsp?res=1";
                    }else if(!checkPlate){
                        url = "presentation/sale/newSale.jsp?res=2";
                    }else{
                        Client client = clientFacade.find(idClient);
                        Car car = carFacade.find(plateCar);
                        Sale s = new Sale();
                        s.setCar1(car);
                        s.setClient1(client);
                        s.setSaleDate(new Date());
                        s.setSalePK(new SalePK(client.getId(), car.getPlate()));
                        saleFacade.create(s);
                        url = "presentation/sale/newSale.jsp?res=3";
                    }
                    break;
                case "redirectNewSaleUserNotRegistre":
                    System.out.println("---------------------------------------------");
                    url = "presentation/sale/newSaleUserNotRegistre.jsp";
                    break;
                case "delete":
                                     
                    break;

                default:
                    throw new AssertionError();
            }

            response.sendRedirect(url);

        } finally {

        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
