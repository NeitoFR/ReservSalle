package com.cesi.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cesi.hibernate.HibernateUtils;
import com.cesi.hibernate.entities.Classes;
import com.cesi.hibernate.entities.Formateurs;
import com.cesi.hibernate.entities.Formations;
import com.cesi.hibernate.entities.Salles;

@WebServlet(name = "ChercherFomateurServlet", urlPatterns = "/chercher-formateur")
public class ChercherFomateurServlet extends HttpServlet  {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Transaction transaction = null;
		Session session = null;

		try {

			session = HibernateUtils.getSessionFactory().getCurrentSession();
			transaction = session.beginTransaction();

			List<Formateurs> liste_Formateurs = (List<Formateurs>) session.createQuery("from Formateurs").getResultList();

			request.setAttribute("liste_Formateurs", liste_Formateurs);

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

		this.getServletContext().getRequestDispatcher("/WEB-INF/chercher_formateur.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		final String id_Formateur = request.getParameter("selectedFormateur");
		//System.out.println(formateur);
		Transaction transaction = null;
		Session session = null;
		try {
			session = HibernateUtils.getSessionFactory().getCurrentSession();
			transaction = session.beginTransaction();
			final String sqlQuery = "select f from Formateurs f where f.id_Formateur="+id_Formateur;
			Formateurs formateur = (Formateurs) session.createQuery(sqlQuery).list().get(0);
			
			final List<Formations> relatedFormations = (List<Formations>) session.createQuery("select formation from Formations formation where formation.formateur.id_Formateur="+id_Formateur).list();
			
			relatedFormations.forEach(f -> {
				System.out.println(f.getNom_Formation());
			});
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
			this.getServletContext().getRequestDispatcher("/WEB-INF/resultat_formateur.jsp").forward(request, response);
		}
	}

}
