package com.cesi.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentServlet", urlPatterns = "/studentHandling")
public class StudentServlet extends Dispatcher{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("StudentServlet doGet");
        this.doGetProcess();
    }

    /*@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        System.out.println("StudentServlet doPost");
        this.doPostProcess(request, response);
    }*/
}
