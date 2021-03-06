package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) {
		try {
			RequestDispatcher d;
			HttpSession session = req.getSession();
			if (session.getAttribute("log").equals("admin"))
				d = req.getRequestDispatcher("/vue/accueil-admin.jsp");
			else
				d = req.getRequestDispatcher("/vue/accueil.jsp");
			d.forward(req, res);
		} catch (IOException | ServletException e) {
			e.printStackTrace();
		}
	}
}
