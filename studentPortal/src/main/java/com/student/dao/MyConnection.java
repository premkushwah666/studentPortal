package com.student.dao;

import java.sql.Connection;
import java.sql.DriverManager;


public class MyConnection {

private static Connection con;
	
	public static Connection getConnection()
	{
		try {
		if(con==null)
		{
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			String url="jdbc:mysql://172.16.11.29:3306/Pritam";
//	    	   String username="root";
//	    	   String password="prit#1404@gami03$";
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/Pritam";
	    	   String username="root";
	    	   String password="root";
     	      con=DriverManager.getConnection(url,username,password);
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}



