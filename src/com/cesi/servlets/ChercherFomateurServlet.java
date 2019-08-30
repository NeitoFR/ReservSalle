package com.cesi.servlets;

import com.cesi.hibernate.HibernateUtils;
import com.cesi.hibernate.entities.Formateurs;
import com.cesi.hibernate.entities.Formations;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ChercherFomateurServlet", urlPatterns = "/chercher-formateur")
public class ChercherFomateurServlet extends HttpServlet  {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Chercher Formateur doGet");
		Transaction transaction = null;
		System.out.println("Init Connexion - Hibernate");
		Session session = null;

		try {

			session = HibernateUtils.getSessionFactory().getCurrentSession();
			transaction = session.beginTransaction();

			List<Formateurs> formateursListe = (List<Formateurs>) session.createQuery("from Formateurs").getResultList();
			System.out.println("Formateur Liste : "+formateursListe);
			request.setAttribute("formateursListe", formateursListe);
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("########## Formateur call get : Enter step ##########");
		final String id_Formateur = request.getParameter("nom_Formateur");
		System.out.println("########## Formateur call get : Enter step ##########"+id_Formateur);
		Transaction transaction = null;
		List<Formations> result = null;
		Session session = null;
		try {
			session = HibernateUtils.getSessionFactory().getCurrentSession();
			transaction = session.beginTransaction();
			result = (List<Formations>) session.createQuery("select formation from Formations formation where formation.formateur.id_Formateur="+id_Formateur).list();
//			session.createQuery("select formation from Formations formation where formation.formateur.id_Formateur="+nom_Formateur).list();
////			final String sqlQuery = "INSERT INTO FORMATIONS (date_Debut, nom_Formation, nb_DemiJournees, id_Classe, id_Formateur, id_Salle, is_ApresMidi) "
////					+ "VALUES ('" + date_Debut  + "', '" + nom_Formation + "', '" + nb_Demi_Journee + "', '" + id_Salle + "', '" + id_Formateur + "', '" + id_Classe + "', " + is_ApresMidi + ")";
			request.setAttribute("formation_Formateur", result);
			System.out.println("Formateur call post : 2nd step" + result);
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			System.out.println("Formateur call post 1st error :"+e);
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		System.out.println("Formateur call post : "+result.get(0).getSalle());
//        this.doGet(request, response);
		this.getServletContext().getRequestDispatcher("/WEB-INF/resultatrecherche.jsp").forward(request, response);

	}
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("######### Formateur call post : Enter step ##########");
//		this.getServletContext().getRequestDispatcher("/WEB-INF/resultatrecherche.jsp").forward(request, response);
//	}
//		final String id_Formateur = request.getParameter("nom_Formateur");
//		Transaction transaction = null;
//		System.out.println("Formateur call post 1st step : "+id_Formateur);
//		List<Formations> result = null;
//		Session session = null;
//		try {
//			session = HibernateUtils.getSessionFactory().getCurrentSession();
//			transaction = session.beginTransaction();
//			result = session.createQuery("select formation from Formations formation where formation.formateur.id_Formateur="+id_Formateur).list();
////			session.createQuery("select formation from Formations formation where formation.formateur.id_Formateur="+nom_Formateur).list();
//////			final String sqlQuery = "INSERT INTO FORMATIONS (date_Debut, nom_Formation, nb_DemiJournees, id_Classe, id_Formateur, id_Salle, is_ApresMidi) "
//////					+ "VALUES ('" + date_Debut  + "', '" + nom_Formation + "', '" + nb_Demi_Journee + "', '" + id_Salle + "', '" + id_Formateur + "', '" + id_Classe + "', " + is_ApresMidi + ")";
//			System.out.println("Formateur call post : 2nd step");
//			transaction.commit();
//		} catch (Exception e) {
//			if (transaction != null) {
//				transaction.rollback();
//			}
//			System.out.println("Formateur call post 1st error :"+e);
//			e.printStackTrace();
//		} finally {
//			if (session != null) {
//				session.close();
//			}
//		}
//		System.out.println("Formateur call post : "+result.get(0).getSalle());
//		this.doGet(request, response);
//	}
}
