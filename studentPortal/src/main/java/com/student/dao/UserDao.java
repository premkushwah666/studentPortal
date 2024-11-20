package com.student.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.studentportal.modal.User;

public class UserDao 
{
	//public static Connection con;
   public boolean saveUser(User user)
  {
//	   user.getName();
//	   user.getEmail();
//	   user.getPassword();
//	   user.getRole();
	   try
	   {
		   Connection con=MyConnection.getConnection();
//		   Class.forName("com.mysql.cj.jdbc.Driver");
//			String url="jdbc:mysql://localhost:3306/Pritam";
//	    	   String username="root";
//	    	   String password="root";
//	    	   String password="prit#1404@gami03$";
//	    	   String password=Password.pass;
//    	      Connection con=DriverManager.getConnection(url,username,password);

		   String sql="insert into student(name,email,password,role) values(?,?,?,?)";
		   PreparedStatement ps=con.prepareStatement(sql); 
		   ps.setString(1,user.getName());
		   ps.setString(2,user.getEmail());
		   ps.setString(3,user.getPassword());
		   ps.setString(4,user.getRole());
		  boolean b= ps.execute();
		   if(b==false)
		   {
			   System.out.println("Inserted....");
		   }
		   else
		   {
			   System.out.println("Not Inserted....");
		   }
	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
		return true;
  }
   
   public User checkUser(String email,String password)
   {
	   try
	   {
//		   User u=new User();
		   Connection con=MyConnection.getConnection();
		   String sql="select*from student where email=?and binary password=?";
		   PreparedStatement ps=con.prepareStatement(sql); 
		   ps.setString(1,email);
		   ps.setString(2,password);
		   ResultSet rs=ps.executeQuery();
		   if(rs.next())
		   {
			   System.out.println("Login Done...");
			   return getUser(email); 
		   }
	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   return null;
   }
   
   public List<User> getUsers(){
		   try
		   {
			   List<User> users = new ArrayList<>();
			   Connection con=MyConnection.getConnection();
			   String sql="select*from student";
			   PreparedStatement ps=con.prepareStatement(sql); 
//			   ps.setString(1,email);
//			   ps.setString(2,password);
			   ResultSet rs=ps.executeQuery();
	           
			   while(rs.next())
			   {
				   User user = new User();
				   int id = rs.getInt("id");
				   String name=rs.getString("name");
				   String email=rs.getString("email");
				   String password=rs.getString("password");
				   String role=rs.getString("role");
				   user.setId(id);
				   user.setName(name);
				   user.setEmail(email);
				   user.setPassword(password);
				   user.setRole(role);
				   users.add(user); 
			   }
			   return users;

		   }
		   catch(Exception e)
		   {
			   e.printStackTrace();
		   }
		   return null;
	   
   }
   
   public User getUser(String email)
   {
	   try
	   {  
		   System.out.println("2 -> "+ email);
		   User user = new User();
		   Connection con=MyConnection.getConnection();
		   String sql="select*from student where email=?";
		   PreparedStatement ps=con.prepareStatement(sql); 
		   ps.setString(1,email);
//		   ps.setString(2,password);
		   ResultSet rs=ps.executeQuery();
           
		   if(rs.next())
		   {	   
			   int id = rs.getInt("id");
			   String name=rs.getString("name");
			   String mail=rs.getString("email");
			   String password=rs.getString("password");
			   String role=rs.getString("role");
			   user.setId(id);
			   user.setName(name);
			   user.setEmail(mail);
			   user.setPassword(password);
			   user.setRole(role);
		   }
		   System.out.println("3 -> db print" + user);
		  
		   return user;

	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   return null;

   }
   
   public boolean deleteUser(String email)
   {
	   try
	   {
		   Connection con=MyConnection.getConnection();
		   String sql="delete from student where email=?";
		   PreparedStatement ps=con.prepareStatement(sql); 
		   ps.setString(1,email);
		   boolean b=ps.execute();
		   if(b==false)
		   {
			   System.out.print("deleted..");
		   }
		   else
		   {
			   return false;
		   }
	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   return true;
   }
   
   
   public boolean editUser(User user) {
	    try {
	        Connection con = MyConnection.getConnection();
	        System.out.println("5-> " + user);
	        String sql = "UPDATE student SET name=?, email=?, password=?, role=? WHERE id=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, user.getName());
	        ps.setString(2, user.getEmail());
	        ps.setString(3, user.getPassword());
	        ps.setString(4, user.getRole());
	        ps.setInt(5, user.getId());

	        // Use executeUpdate instead of execute
	        int rowsAffected = ps.executeUpdate();

	        if (rowsAffected > 0) {
	            System.out.println("Updated successfully.");
	            return true;
	        } else {
	            System.out.println("No record found with the given ID.");
	            return false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}

   // pritam's code
//   public boolean editUser(User user)
//   {
//	   try
//	   {
//		   Connection con=MyConnection.getConnection();
//		   System.out.println("5-> "+ user);
//		   String sql="update student set name=?,email=?,password=?,role=? where id=?";
//		   PreparedStatement ps=con.prepareStatement(sql); 
//		   ps.setString(1,user.getName());
//		   ps.setString(2,user.getEmail());
//		   ps.setString(3,user.getPassword());
//		   ps.setString(4,user.getRole());
//		   ps.setInt(5,user.getId());
//		   boolean b=ps.execute();
//		  
//         if(b==false)
//         {
//        	 System.out.println("Updated....");
//        	 
//        	 return true;
//         }
//	   }
//	   catch(Exception e)
//	   {
//		   e.printStackTrace();
//	   }
//	   return false;
//   }
   
   
   
}