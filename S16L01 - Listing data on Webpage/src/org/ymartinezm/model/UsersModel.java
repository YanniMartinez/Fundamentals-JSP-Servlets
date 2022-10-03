package org.ymartinezm.model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class UsersModel {
	public List<User> listUsers() {
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
