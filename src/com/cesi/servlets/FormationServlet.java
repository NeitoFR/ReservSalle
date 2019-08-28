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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "FormationServlet", urlPatterns = "/formations")
public class FormationServlet extends Dispatcher{
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
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
    	Date dateParser = null;
    	final String nom_Formation = request.getParameter("nom_Formation");
        String date_Debut = request.getParameter("date_Debut");
        final int nb_Demi_Journee = Integer.parseInt(request.getParameter("nb_Demi_Journee"));
        final int id_Salles = Integer.parseInt(request.getParameter("salles_Liste"));
        final int id_Formateurs = Integer.parseInt(request.getParameter("formateurs_Liste"));
        final int id_Classes = Integer.parseInt(request.getParameter("classesListe"));

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        try {
            System.out.println("Parsing en cours");
            dateParser = formatter.parse(date_Debut);
            System.out.println(dateParser);
            date_Debut = formatter.format(dateParser);
            System.out.println("Parsing fini");

        } catch (ParseException e) {
            System.out.println("Erreur lors du parsing de la date de début : " + e);
        }
        
    	final Salles salles = new Salles();
    	salles.setId_Salle(id_Salles);
        
    	final Formateurs formateurs = new Formateurs();
    	formateurs.setId_Formateur(id_Formateurs);
        
    	final Classes classes = new Classes();
    	classes.setId_Classe(id_Classes);
    	final Formations formations = new Formations(nom_Formation, dateParser, nb_Demi_Journee, salles, formateurs, classes);
    	
    	
    	Transaction transaction = null;
        Session session = null;
        
        try {
        	session = HibernateUtils.getSessionFactory().getCurrentSession();
        	transaction = session.beginTransaction();
        	
        	session.save(formations);
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
    	
//        this.getServletContext().getRequestDispatcher("/WEB-INF/formation.jsp").forward(request, response);
    }
}