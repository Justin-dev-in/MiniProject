package com.app.bean;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		PrintWriter pw=response.getWriter();
		String mobile1=request.getParameter("mobile");
		long mobile = Long.parseLong(mobile1);
		String password=request.getParameter("password");
	     Customer e=new   Customer();
		e.setMobile(mobile);
		e.setPassword(password);
		boolean ans=false;
		try
		{
			ans=CustomerDao.validate(e);
			
		}
		catch(SQLException e1)
		{
			e1.printStackTrace();
		}
		if(ans==true)
		{
			pw.write("login successful ");
			request.getRequestDispatcher("welcome.jsp").include(request, response);
		}
		else
		{
			pw.write("please enter correct username & password");
			request.getRequestDispatcher("index.jsp").include(request, response);
		}
		
		 HttpSession session= request.getSession();
		    session.setAttribute("mobile",mobile);
		   
	}	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
