package org.ymartinezm.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SiteController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "login":
			request.getRequestDispatcher("login.jsp").forward(request, response);
			break;

		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		switch (action) {
		case "loginSubmit":
			authenticate(request, response);
			break;

		default:
			break;
		}
		
	}
	
	public void authenticate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**Cuando no se tiene habilitado el tema de las cookies entonces
		 * puede que tengamos algunos problemas dentro de nuestro navegadores
		 * es por ello que una de las posibles soluciones es hacer el ENCODING 
		 * de la URL para poder autenticarnos sin problema*/
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("yann") && password.equals("12345")) {
			//Invalidamos sesiones en caso de existir
			request.getSession().invalidate();
			
			//Creando una nueva sesion
			HttpSession newSession = request.getSession(true);
			//Dando el tiempo de actividad
			newSession.setMaxInactiveInterval(300);
			
			//Manda el atributo
			newSession.setAttribute("username", username);
			
			//Haciendo el encoding de la URL
			String encode = response.encodeUrl(request.getContextPath());
			/**Cuando queramos autenticar veremos el session ID en la URL en caso de ser
			requerido, si no existe la cookie entonces se propaga de ese modo:
			Ej: http://localhost:8080/S04L01_-_Session_Under_JSP_Overview;jsessionid=40B405589417DB0890090254219E49F5/MemberAreaController?action=memberArea*/
			response.sendRedirect(encode+"/MemberAreaController?action=memberArea");
		}else {
			response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
		}
	}

}
