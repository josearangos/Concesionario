/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.dao.CarFacadeLocal;
import com.udea.modelo.Car;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class carServlet extends HttpServlet {

    @EJB
    private CarFacadeLocal carFacade;   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            String url = "presentation/car/listCar.jsp";
            switch(action){
                case "new":
                    Car c = new Car();
                    c.setPlate(request.getParameter("matricula"));
                    c.setBrand(request.getParameter("marca"));
                    c.setModel(Integer.parseInt(request.getParameter("modelo")));
                    c.setPrice(Integer.parseInt(request.getParameter("precio")));
                    c.setPhoto("auto.jpg");
                    carFacade.create(c);
                    break;
                case "redirectCar":
                    url = "presentation/car/newCar.jsp";
                    break;
                case "redirectLogin":
                    url = "presentation/login.jsp";
                    break;
                case "redirectSearchCar":
                    url = "presentation/car/searchCar.jsp";
                    break;                    
                case "list":
                    List<Car> findAll = carFacade.findAll();
                    request.getSession().setAttribute("cars", findAll);
                    url = "presentation/car/listCar.jsp";
                 break;               
                case "delete":
                    String id = request.getParameter("id");
                    Car car = carFacade.find(id);
                    carFacade.remove(car);
                    url = "carServlet?action=list";
                    break;                
                case "update":
                    id = request.getParameter("id");
                    List<Car> lc = new ArrayList<>();
                    c = carFacade.find(id);
                    lc.add(c);
                    request.getSession().setAttribute("cars", lc);
                    url = "presentation/car/editCar.jsp";
                    break;                   
                case "updateCar":                    
                    c = new Car();
                    c.setPlate(request.getParameter("matricula"));
                    System.out.println("");
                    c.setBrand(request.getParameter("marca"));
                    c.setModel(Integer.parseInt(request.getParameter("modelo")));
                    c.setPrice(Integer.parseInt(request.getParameter("precio")));
                    c.setPhoto("hola.jpg");
                    carFacade.edit(c);
                    url = "presentation/car/editCar.jsp?res=1";                   
                    break;
                case "searchCar":                    
                    String plate = request.getParameter("plate");
                    boolean checkPlate = carFacade.checkPlate(plate);
                    if(!checkPlate){
                        url = "presentation/car/listCar.jsp?res=1";
                    }else{
                        Car carS = carFacade.find(plate);
                        request.getSession().setAttribute("carS", carS);
                        url = "presentation/car/searchCar.jsp";
                    }                                    
                    break;
            }

            response.sendRedirect(url);
        } finally {
            out.close();
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
