package com.wallouf.servlets;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wallouf.beans.Coyote;

public class Test extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Coyote premierBean = new Coyote();
		premierBean.setNom("robert");
		premierBean.setPrenom("de niro");
		
		/**
		 * Creation dune liste
		 */
		List<Integer> premiereListe = new ArrayList<Integer>();
		premiereListe.add(27);
		premiereListe.add(12);
		premiereListe.add(123);
		premiereListe.add(8);
		
		
		/**
		 * Passe les attributs
		 */

		request.setAttribute("coyote", premierBean);
		request.setAttribute("liste", premiereListe);
		
		
		/**		
		 * envoi des donnees
		 */
		this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
	}
}
