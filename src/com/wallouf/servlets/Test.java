package com.wallouf.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;

import com.wallouf.beans.Coyote;

public class Test extends HttpServlet {
    /**
     * Static variables
     */
    public static final String ATT_MESSAGE = "texte";
    public static final String ATT_BEAN    = "coyote";
    public static final String ATT_LISTE   = "liste";
    public static final String ATT_JOUR    = "jour";
    public static final String VUE         = "/WEB-INF/test.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String testText = new String( "Miaouh" );

        Coyote premierBean = new Coyote();
        premierBean.setNom( "robert" );
        premierBean.setPrenom( "de niro" );

        /**
         * Creation dune liste
         */
        List<Integer> premiereListe = new ArrayList<Integer>();
        premiereListe.add( 27 );
        premiereListe.add( 12 );
        premiereListe.add( 123 );
        premiereListe.add( 8 );

        /**
         * Date avec la librairie Joda
         */

        DateTime dt = new DateTime();
        Integer jourDuMois = dt.getDayOfMonth();

        /**
         * Passe les attributs
         */

        request.setAttribute( ATT_MESSAGE, testText );
        request.setAttribute( ATT_BEAN, premierBean );
        request.setAttribute( ATT_LISTE, premiereListe );
        request.setAttribute( ATT_JOUR, jourDuMois );

        /**
         * envoi des donnees
         */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}
