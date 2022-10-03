package org.ymartinezm;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class Demo
 */
@WebServlet("/Demo")
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Creando objeto de DataSource
	private DataSource dataSource;
	//La siguiente notación nos permite accesar a un recurso externo
	@Resource(name="jdbc/project")

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Step 1: Initialize Connection Objects
		
		//Step 2: Create a SQL Statements String
		
		//Step 3: Execute SQL Query
		
		//Step 4: Process the result set
		
	}

}
