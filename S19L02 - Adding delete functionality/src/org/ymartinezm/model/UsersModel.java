package org.ymartinezm.model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

	public Boolean addUser(DataSource dataSource, User newUser) {
		Connection con = null;
		PreparedStatement statement = null;
		try {
			con = dataSource.getConnection();
			String username = newUser.getUsername();
			String email = newUser.getEmail();
			String query = "INSERT INTO users (username,email) VALUES (?,?)";
			statement = con.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, email);
			return statement.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} /*
			 * finally { try { con.close(); statement.close(); } catch (SQLException e) { //
			 * TODO Auto-generated catch block e.printStackTrace(); }
			 * 
			 * }
			 */
		
	}

	public boolean updateUser(DataSource dataSource, User updatedUser) {
		
		Connection con=null;
		PreparedStatement statement = null;
		try {
			con = dataSource.getConnection();
			int usersId = updatedUser.getUsers_id();
			String username = updatedUser.getUsername();
			String email = updatedUser.getEmail();
			String query = "UPDATE users SET username=?, email=? WHERE users_Id=?";
			statement = con.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, email);
			statement.setInt(3, usersId);
			return statement.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	public void deleteUser(DataSource dataSource,int usersId) {
		Connection con=null;
		PreparedStatement statement = null;
		try {
			con = dataSource.getConnection();
			String query = "DELETE FROM users WHERE users_Id=?";
			statement = con.prepareStatement(query);
			statement.setInt(1, usersId);
			statement.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
