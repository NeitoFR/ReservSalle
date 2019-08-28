package com.cesi.servlets;

import com.cesi.hibernate.HibernateUtils;
import com.cesi.hibernate.entities.Room;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FormationServlet", urlPatterns = "/formation.jsp")
public class FormationServlet extends Dispatcher{
    @SuppressWarnings("unchecked")
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("FormationServlet doGet");
        Transaction transaction = null;
        System.out.println("Init Connexion");
        
        try (Session session = HibernateUtils.getSessionFactory().getCurrentSession()) {
            System.out.println("YOLO");
            transaction = session.beginTransaction();

           List <Room> roomList = (List <Room>) session.createQuery("from Room").getResultList();
            roomList.forEach(room -> System.out.println(room.getName()));
            
            request.setAttribute("roomList", roomList);

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
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