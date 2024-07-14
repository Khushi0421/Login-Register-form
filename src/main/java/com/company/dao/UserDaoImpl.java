package com.company.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DButil;

public class UserDaoImpl implements UserDao{
     @Override
	public boolean isValidUser(String username, String password) {
		
		String query = "SELECT * FROM loginform WHERE username = ? AND password = ?";
		try(Connection connection = DButil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)){
			
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			System.out.println("query run ho gyi");
			return resultSet.next();
			
		}catch (SQLException e) {
			e.printStackTrace();
	       return false;
	       
		}
	} 

}
