package com.wallouf.servlets;

import java.io.IOException;

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
		request.setAttribute("coyote", premierBean);
		
		
		/**		
		 * envoi des donnees
		 */
		this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
	}
}
