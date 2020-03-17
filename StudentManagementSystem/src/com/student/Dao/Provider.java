package com.student.Dao;

import java.sql.*;

public class Provider {

	static Connection con = null;
	static {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mydb", "mydb");

		} catch (Exception e) {
			System.out.print(e);
		}
	}
	public static Connection getConnection() {
		return con;
	}

}
