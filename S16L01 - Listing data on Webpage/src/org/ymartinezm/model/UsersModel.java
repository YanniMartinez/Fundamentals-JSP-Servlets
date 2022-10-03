package org.ymartinezm.model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.ymartinezm.entity.User;

public class UsersModel {
	public List<User> listUsers(DataSource dataSource) {
		List<User> listUsers = new ArrayList<>();
		
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
				listUsers.add(new User(rs.getInt("users_id"),rs.getString("username"), rs.getString("email")) );
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listUsers;
	}
}
