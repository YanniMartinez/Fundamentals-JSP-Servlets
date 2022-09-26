package org.ymartinezm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParameterServlet
 */
@WebServlet("/ParameterServlet")
public class ParameterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ParameterServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//response.getWriter().print("Hola a todos"); 
		//Permite imprimir algo
		
		//Permite mostrar en pantalla el valor del parametro getValue1 que recibió en
		//el URL: http://localhost:8080/S01L14/ParameterServlet?getValue1=HolaMundo
		//response.getWriter().print( request.getParameter("getValue1") );
		
		// http://localhost:8080/S01L14/ParameterServlet?getValue1=Hola&getValue2=Mundo
		PrintWriter out = response.getWriter();
		out.println("Value 1: "+request.getParameter("getValue1"));
		out.println("Value 2: "+request.getParameter("getValue2"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
