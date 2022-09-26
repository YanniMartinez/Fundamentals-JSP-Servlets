package org.ymartinezm.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String param = request.getParameter("page");
		if(param.equals("login")) { //http://localhost:8080/S01L20/Controller?page=login
			//Enviaremos el request hacia el login.jsp
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		} else if(param.equals("signUp")) { //http://localhost:8080/S01L20/Controller?page=login
			//Enviaremos el request hacia el login.jsp
			getServletContext().getRequestDispatcher("/signUp.jsp").forward(request, response);
		} else if(param.equals("about")) { //http://localhost:8080/S01L20/Controller?page=login
			//Enviaremos el request hacia el login.jsp
			getServletContext().getRequestDispatcher("/about.jsp").forward(request, response);
		} else { //http://localhost:8080/S01L20/Controller?page=login
			//Enviaremos el request hacia el login.jsp
			getServletContext().getRequestDispatcher("/notFound.jsp").forward(request, response);
		}
		
		
	}

}
