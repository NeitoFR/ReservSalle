package com.cesi.servlets;

import com.cesi.hibernate.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FormationServlet", urlPatterns = "/formations")
public class FormationServlet extends Dispatcher{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("FormationServlet doGet");
        Transaction transaction = null;
        System.out.println("Init Connexion - Hibernate");
        
        try (Session session = HibernateUtils.getSessionFactory().getCurrentSession()) {
        	
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Checking Connexion state");
        System.out.println(HibernateUtils.getSessionFactory().isOpen());
        this.getServletContext().getRequestDispatcher("/WEB-INF/formation.jsp").forward(request, response);
    }

    /*@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        System.out.println("StudentServlet doPost");
        this.doPostProcess(request, response);
    }*/
}