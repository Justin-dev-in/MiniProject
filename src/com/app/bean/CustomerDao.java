package com.app.bean;

import java.util.List;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import java.sql.Connection;
import java.sql.DriverManager;



public final class CustomerDao {
	
	
	/* public static  Customer fetchdetails(Customer u) {
		 
		 Session session=null;
			SessionFactory factory;
		 factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
		
		 
	   
	     
	 }
	*/

		public static Connection getConnection()
		  {
			Connection con =null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver Found");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Store","root","root");
				System.out.println("connection Established");
				
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return con;
			
			}
		public static void addCustomer(Customer c) {
			Session session=null;
			SessionFactory factory;
			try {
				
				factory=new Configuration().configure().buildSessionFactory();
				session=factory.openSession();
				Transaction t=session.beginTransaction();
				session.save(c);
				t.commit();
				System.out.println("User registration successful"); 
				
			}
			catch(Exception ex) {
				System.out.println(ex);
			}
			finally {
				session.close();
			}
			
		}
		public static boolean validate(Customer e) throws SQLException
		{
			Connection con=CustomerDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from userdetails where mobile=? and password=?");
			ps.setInt(1,e.getMobile());
			ps.setString(2,e.getPassword());
			ResultSet rs=ps.executeQuery();
			boolean status=rs.next();
			return status;
			}
		
		

		
		}
		
