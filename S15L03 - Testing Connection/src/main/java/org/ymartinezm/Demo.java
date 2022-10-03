package org.ymartinezm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
	
	//La siguiente notación nos permite accesar a un recurso externo
	@Resource(name="jdbc/project")
	//Creando objeto de DataSource
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		
		//Step 1: Initialize Connection Objects
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try { //Obteniendo conexión desde nuestro DataSource
			con = dataSource.getConnection();
			
			//Step 2: Create a SQL Statements String
			String query = "SELECT * FROM users";
			stmt = con.createStatement(); //Creando statement
			
			//Step 3: Execute SQL Query
			rs = stmt.executeQuery(query);
			
			//Step 4: Process the result set
			while(rs.next()) {
				out.print("<br/>" + rs.getString("email"));
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
