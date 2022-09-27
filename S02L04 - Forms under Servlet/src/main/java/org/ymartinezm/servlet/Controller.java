package org.ymartinezm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
		response.getWriter().print(request.getParameter("name")+"<br/>");
		response.getWriter().print(request.getParameter("gender")+"<br/>");
		
		//Logica para ver todos los detalles de lenguajes
		PrintWriter out= response.getWriter();
		String[] countries = request.getParameterValues("language"); 
		if(countries !=null){
			for(String country: countries){
				out.print(country);
				out.print("<br/>");
			}
		}else{
			out.print("None selected");
		}
		
		response.getWriter().print(request.getParameter("country")+"<br/>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().print(request.getParameter("name")+"<br/>");
		response.getWriter().print(request.getParameter("gender")+"<br/>");
		
		//Logica para ver todos los detalles de lenguajes
		PrintWriter out= response.getWriter();
		String[] countries = request.getParameterValues("language"); 
		if(countries !=null){
			for(String country: countries){
				out.print(country);
				out.print("<br/>");
			}
		}else{
			out.print("None selected");
		}
		
		response.getWriter().print(request.getParameter("country")+"<br/>");
		
	}

}
