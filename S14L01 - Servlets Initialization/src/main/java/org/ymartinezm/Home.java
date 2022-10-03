package org.ymartinezm;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String message;
    /**
     * Default constructor. 
     * Sirve para inicializar objetos cuando hay nueva instancia
     */
    public Home() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 * Este método sirve para inicializar elementos cuando cargamos el Servlet
	 * dentro de nuestro WebServer. 
	 * 
	 * Sin embargo está es la versión LEGACY, es decir, la forma antigua
	 */
	public void init(ServletConfig config) throws ServletException {
		message="Message from init method";
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().print(message);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}