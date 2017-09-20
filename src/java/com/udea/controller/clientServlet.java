/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.dao.ClientFacadeLocal;
import com.udea.modelo.Car;
import com.udea.modelo.Client;
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
public class clientServlet extends HttpServlet {

    @EJB
    private ClientFacadeLocal clientFacade;

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
                    Client c = new Client();
                    c.setLastName(request.getParameter("apellido"));
                    c.setId(request.getParameter("ide"));
                    c.setName(request.getParameter("nombre"));
                    c.setLastName(request.getParameter("apellido"));
                    c.setEmail(request.getParameter("correo"));
                    boolean checkId = clientFacade.checkId(c.getId());
                    boolean checkEmail = clientFacade.checkEmail(c.getEmail());

                    if (checkId) {
                        url = "presentation/client/newClient.jsp?res=2";
                    } else if (checkEmail) {
                        url = "presentation/client/newClient.jsp?res=3";
                    } else {
                        clientFacade.create(c);
                        url = "presentation/client/newClient.jsp?res=1";
                    }
                    break;
                case "List":
                    List<Client> findAll = clientFacade.findAll();
                    request.getSession().setAttribute("clients", findAll);
                    url = "presentation/client/searchClient.jsp";
                    break;
                case "delete":
                    String id = request.getParameter("id");
                    c = clientFacade.find(id);
                    clientFacade.remove(c);
                    url = "clientServlet?action=List";
                    break;

                case "edit":
                    id = request.getParameter("id");
                    List<Client> cc = new ArrayList<>();
                    c = clientFacade.find(id);
                    cc.add(c);
                    request.getSession().setAttribute("cliente", cc);
                    url = "presentation/client/editClient.jsp";
                    break;

                case "editClient":
                    c = new Client();
                    c.setId(request.getParameter("ide"));
                    c.setName(request.getParameter("nombre"));
                    c.setLastName(request.getParameter("apellido"));
                    c.setEmail(request.getParameter("correo"));
                    clientFacade.edit(c);
                     url = "presentation/client/editClient.jsp?res=1";
                    
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
