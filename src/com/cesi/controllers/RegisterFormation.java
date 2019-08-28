package com.cesi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterFormation", urlPatterns = "/registerFormation")
public class RegisterFormation extends HttpServlet {
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        String message = "Transmission de variables : OK !";
        request.setAttribute( "test", message );
        this.getServletContext().getRequestDispatcher( "/WEB-INF/registerFormation.jsp" ).forward( request, response );
    }
}