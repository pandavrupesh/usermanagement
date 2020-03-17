package com.student.Dao;
import java.sql.*; 
import java.util.*;
import com.student.Dao.Provider;
import com.student.bean.AdminBean;

public class AdminDao {
	
	public static int check(String uname, String pass){
		int status =0;
		try{
			System.out.println("userid: "+ uname+"password: "+pass);
			Connection con =Provider.getConnection();
			String sql ="select userID, password from Adminlogin where userID= '"+uname+"' and password='"+pass+"'";
			PreparedStatement ps =con.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				System.out.println("query fire successful");
			status++; 
				
			}
		}
			catch (Exception e) {
				System.out.print(e);
			}
		System.out.println("query fire successful 2");
		System.out.println(status);
		return status;
		
	}
	
}
