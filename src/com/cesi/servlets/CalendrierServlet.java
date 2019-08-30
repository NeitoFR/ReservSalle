package com.cesi.servlets;

import com.cesi.hibernate.HibernateUtils;
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

@WebServlet(urlPatterns = "/calendrier")
public class CalendrierServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Transaction transaction = null;
		Session session = null;

		try {
			session = HibernateUtils.getSessionFactory().getCurrentSession();
			transaction = session.beginTransaction();

			List<Formations> calendrierListe = (List<Formations>) session.createQuery("from Formations").getResultList();
			
			request.setAttribute("calendrierListe", calendrierListe);
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

		this.getServletContext().getRequestDispatcher("/WEB-INF/calendrier.jsp").forward(request, response);
	}
}