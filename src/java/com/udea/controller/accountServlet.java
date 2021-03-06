/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.dao.AccountFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author josearangos
 */
public class accountServlet extends HttpServlet {

    @EJB
    private AccountFacadeLocal accountFacade;

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
        PrintWriter out = response.getWriter();
        try{
            String action = request.getParameter("action");
            String url = "presentation/index.jsp";
            switch(action){
                case "login":
                    url = "index.jsp";
                    String u = request.getParameter("username");
                    String p = request.getParameter("password");
                    boolean checkLogin = accountFacade.checkLogin(u,p);
                    if (checkLogin) {
                        request.getSession().setAttribute("login", u);
                        url = "presentation/menu.jsp";
                    }else {
                        url = "presentation/login.jsp?error=1";
                    }        
                    break;
                case "logout":
                    request.getSession().removeAttribute("login");
                    url = "presentation/login.jsp";
                case "redirectClients":
                    url = "presentation/client/searchClient.jsp";
                    break;
                case "redirectHistorySale":
                    url = "presentation/sale/searchSale.jsp";
                    break;
                case "redirectListCar":
                    url = "presentation/car/listCar.jsp";
                    break;
                case "redirectSale":
                    url = "presentation/sale/newSale.jsp";
                    break;
                case "redirectMenu":
                    url = "presentation/menu.jsp";
                    break;
                case "redirectLogin":
                    url = "presentation/login.jsp";
                    break;
            }
            response.sendRedirect(url);            
        }finally{
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
