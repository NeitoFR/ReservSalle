package com.cesi.servlets;

import com.cesi.hibernate.HibernateUtils;
import com.cesi.hibernate.entities.Classes;
import com.cesi.hibernate.entities.Formateurs;
import com.cesi.hibernate.entities.Formations;
import com.cesi.hibernate.entities.Salles;

import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "FormationServlet", urlPatterns = "/formations")
public class FormationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("FormationServlet doGet");
        Transaction transaction = null;
        System.out.println("Init Connexion - Hibernate");
        Session session = null;
        
        try {
        	session = HibernateUtils.getSessionFactory().getCurrentSession();
        	transaction = session.beginTransaction();
        	
        	List<Salles> sallesListe = (List<Salles>) session.createQuery("from Salles").getResultList();
        	List<Formateurs> formateursListe = (List<Formateurs>) session.createQuery("from Formateurs").getResultList();
        	List<Classes> classesListe = (List<Classes>) session.createQuery("from Classes").getResultList();

        	request.setAttribute("sallesListe", sallesListe);
        	request.setAttribute("formateursListe", formateursListe);
        	request.setAttribute("classesListe", classesListe);
        	transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
              transaction.rollback();
            }
            e.printStackTrace();
         } finally {
            if (session != null) {
              session.close();
            }
        }
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/formation.jsp").forward(request, response);
    }

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        final String nom_Formation = request.getParameter("nom_Formation");
        final String date_Debut = request.getParameter("date_Debut");
        final String nb_Demi_Journee = request.getParameter("nb_Demi_Journee");
        final String id_Salle = request.getParameter("salles_Liste");
        final String id_Formateur = request.getParameter("formateurs_Liste");
        final String id_Classe = request.getParameter("classesListe");
        final String is_ApresMidi = request.getParameter("apresMidiCheck");
        Transaction transaction = null;
        Session session = null;

        try {
            session = HibernateUtils.getSessionFactory().getCurrentSession();
            transaction = session.beginTransaction();
            final String sqlQuery = "INSERT INTO FORMATIONS (date_Debut, nom_Formation, nb_DemiJournees, id_Classe, id_Formateur, id_Salle, is_ApresMidi) "
                    + "VALUES ('" + date_Debut  + "', '" + nom_Formation + "', '" + nb_Demi_Journee + "', '" + id_Salle + "', '" + id_Formateur + "', '" + id_Classe + "', " + is_ApresMidi + ")";
            session.createSQLQuery(sqlQuery).executeUpdate();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        this.doGet(request, response);
    }
}