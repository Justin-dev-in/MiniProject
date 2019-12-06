package com.app.bean;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class forgotpassword
 */
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");

        try
            {
		        String newpswd;  
		        ServletRequest session = null;
		        HttpSession se=request.getSession();
		        
		        /* Class.forName("com.mysql.jdbc.Driver"); */
		        PrintWriter pw=response.getWriter();
		        String mob=request.getParameter("mobile");
		        long mobile=Long.parseLong(mob);
		        newpswd =request.getParameter("password");
		        Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver Found");
		        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Store","root","root");
		       
		        
				String email =request.getParameter("email");
		      /* System.out.println("Welcome:"+email);*/
		       Customer e=new   Customer();
		       e.setEmail(email);
		       e.setMobile(mobile);
				boolean ans=false;
				try
				{
					ans=CustomerDao.validateEmail(e);
					
				}
				catch(SQLException e1)
				{
					e1.printStackTrace();
				}
           if(ans!=false)
              { 
		          if(newpswd!=null)
		          {
			          PreparedStatement pst=con.prepareStatement("update userDetails1 set password='"+newpswd+"' where email='"+ email +"'");
			          int i=pst.executeUpdate();
			        if(i>0)
			        	{
			        	
			        	pw.print("<br><br><br><br><br>");
			            pw.print("Password has been updated");
			            request.getRequestDispatcher("newIndex.jsp").include(request,response);
			        	}
	              	}
		        
		          else
		  		{
		  			pw.write("please enter correct mobile & email");
		  			request.getRequestDispatcher("forgotpwd.jsp").include(request, response);
		  		}
		      }}
		  		
           catch(SQLException e2) {
        	   e2.printStackTrace();} catch (ClassNotFoundException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
           }
              
                 
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

