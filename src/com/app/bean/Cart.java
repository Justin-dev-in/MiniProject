package com.app.bean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Cart
 */
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String id=request.getParameter("id");
		int bid = Integer.parseInt(id);
		System.out.println("id"+bid);
		String qty=request.getParameter("quantity");
		System.out.println(qty);
		int quant=Integer.parseInt(qty);
	
	    Book b=new Book();
		b=UserDao.getBookById(bid);
		float total_price=b.getPrice()*quant;
		
	  
		pw.print("<table border=1 width=40% <tr><td>id</td> <td>name</td><td>author</td><td>price</td><td>genre</td><td>Quantity</td><td>Total price</td></tr><tr><td>"+b.getBook_id()+"</td><td>"+b.getBook_name()+"</td> <td>"+b.getAuthor()+"</td> <td>"+b.getPrice()+" <td>"+b.getGenre()+"</td><td>"+qty+"<td>"+total_price+"<td><a href='customerDetails.jsp'><input type='button' value='Purchase'></a></table>");
	     
	    HttpSession session= request.getSession();
	    session.setAttribute("id",id);
	    session.setAttribute("quantity",qty);
	    long mob=(long) session.getAttribute("mobile");
	    session.setAttribute("total",total_price);
	    session.setAttribute("name",b.getBook_name());
	    System.out.println(mob);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
