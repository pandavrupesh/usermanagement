package com.student.Dao;
import java.sql.*; 
import java.util.*;
import com.student.Dao.Provider;
import com.student.bean.*;

public class StudentDao {
		
	//insert data
	public static int save(StudentBean u){
		int status =0;
		try {
		Connection con = Provider.getConnection();
		String sql ="insert into StudentRegistration (id,name,email,password,DOB,gender,country) values(seq_StudentRegistration.nextval,?,?,?,?,?,?)";
		PreparedStatement ps =con.prepareStatement(sql);
		ps.setString(1, u.getName());
		ps.setString(2, u.getEmail());
		ps.setString(3, u.getPass());
		ps.setString(4, u.getDOB());
		ps.setString(5, u.getGender());
		ps.setString(6, u.getCountry());
		status =ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}
		return status;
	}
	
	public static boolean check(String uname, String pass){
		boolean status =false;
		try{
			Connection con =Provider.getConnection();
			String sql ="select email, password from StudentRegistration where email= '"+uname+"' and password='"+pass+"'";
			PreparedStatement ps =con.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			status= rs.next();
		}
			catch (Exception e) {
				System.out.print(e);
			}
		return status;
	}
	
	//show data
	public static List<StudentBean> getAllRecords(){
		List<StudentBean> list=new ArrayList<StudentBean>();
		
		try {
			Connection con =Provider.getConnection();
			String sql ="select * from studentRegistration ORDER BY id ASC";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next()){
				StudentBean stud =new StudentBean();
				stud.setId(rs.getInt(1));
				stud.setName(rs.getString(2));
				stud.setEmail(rs.getString(3));
				stud.setPass(rs.getString(4));
				stud.setDOB(rs.getString(5));
				stud.setGender(rs.getString(6));
				stud.setCountry(rs.getString(7));
				list.add(stud);
			}
		} catch (Exception e) {
			
		}
		return list;
	}
		//Edit DATA
		
	public static int delete(StudentBean del) {
		int status = 0;
		try {
			Connection con = Provider.getConnection();
			String sql = "delete from studentRegistration where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, del.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}
		return status;
	}
	//update data
	
	public static int update(StudentBean up){
		int status =0;
		 try{  
		        Connection con=Provider.getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update studentRegistration set name=?,password=?,email=?,sex=?,country=? where id=?");  
		        ps.setString(1,up.getName());  
		        ps.setString(2,up.getPass());  
		        ps.setString(3,up.getEmail());  
		        ps.setString(4,up.getGender());  
		        ps.setString(5,up.getCountry());  
		        ps.setInt(6,up.getId());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		return status;
	}
	
	public static StudentBean getRecordById(int id){ 
		System.out.println(id);
		StudentBean up=null;  
	    try{  
	        Connection con=Provider.getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from studentRegistration where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            up=new StudentBean();  
	            up.setId(rs.getInt("id"));  
	            up.setName(rs.getString("name"));  
	            up.setPass(rs.getString("password"));  
	            up.setEmail(rs.getString("email"));  
	            up.setGender(rs.getString("sex"));  
	            up.setCountry(rs.getString("country"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    System.out.print(up);
	    return up;  
	}  
	}

	

	


