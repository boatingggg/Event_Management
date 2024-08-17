package com.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB {

	public static Connection getConnection() {
		Connection con = null;
		try {
			final String url = "jdbc:mysql://localhost:3306/admin";
			final String userName = "root";
			final String password = "";
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url, userName, password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
