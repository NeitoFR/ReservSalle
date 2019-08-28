package com.cesi.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import java.io.IOException;

public class Dispatcher extends HttpServlet {
    private static final String ATT_UTILISATEUR = "utilisateur";
    private static final String ATT_FORM = "form";
    public static final String VUE = "/WEB-INF/inscriptionUtilisateur.jsp";

    protected void doGetProcess() throws ServletException, IOException {
        System.out.println("doGet");
        this.getServletContext().getNamedDispatcher(this.getServletName());
    }

    /*protected void doPostProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        System.out.println("this.getClass().getName() : " + this.getClass().getName());
        System.out.println("this.getServletName() : " + this.getServletName());
        this.getServletContext().getNamedDispatcher(this.getClass().getName()).forward(request, response);
    }*/
}