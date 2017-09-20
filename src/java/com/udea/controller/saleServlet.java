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
            String idClient;
            String plateCar;
            boolean checkId;
            boolean checkPlate;
            switch (action) {
                case "new":
                    idClient = request.getParameter("ide");
                    plateCar = request.getParameter("plate");
                    checkId = clientFacade.checkId(idClient);
                    checkPlate = carFacade.checkPlate(plateCar);
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
                    url = "presentation/sale/newSaleUserNotRegistre.jsp";
                    break;
                case "newSaleUserNotRegistre":
                    idClient = request.getParameter("ide");
                    String nameClient = request.getParameter("name");
                    String lastNameClient = request.getParameter("lastName");
                    String emailClient = request.getParameter("email");
                    plateCar = request.getParameter("plate");
                    checkId = clientFacade.checkId(idClient);
                    checkPlate = carFacade.checkPlate(plateCar);
                    boolean checkEmail = clientFacade.checkEmail(emailClient);
                    boolean checkPlateInSale = saleFacade.checkPlate(plateCar);
                    if (checkId) {
                        url = "presentation/sale/newSaleUserNotRegistre.jsp?res=1";
                    }else if(checkEmail){
                        url = "presentation/sale/newSaleUserNotRegistre.jsp?res=2";
                    }else if(!checkPlate){
                        url = "presentation/sale/newSaleUserNotRegistre.jsp?res=3";
                    }else if(checkPlateInSale){
                        url = "presentation/sale/newSaleUserNotRegistre.jsp?res=4";
                    }else{
                        Client c = new Client();
                        c.setId(idClient);
                        c.setName(nameClient);
                        c.setLastName(lastNameClient);
                        c.setEmail(emailClient);
                        clientFacade.create(c);
                        Car car = carFacade.find(plateCar);
                        Sale sale = new Sale();
                        sale.setCar1(car);
                        sale.setClient1(c);
                        sale.setSaleDate(new Date());
                        sale.setSalePK(new SalePK(c.getId(), car.getPlate()));
                        saleFacade.create(sale);
                        url = "presentation/sale/newSaleUserNotRegistre.jsp?res=5";
                    }
                    break;
                case "listSale":
                    List<Sale> sales = saleFacade.findAll();
                    request.getSession().setAttribute("sales", sales);
                    url = "presentation/sale/searchSale.jsp";
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
