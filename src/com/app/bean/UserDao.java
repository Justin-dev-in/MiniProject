package com.app.bean;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDao 
{
	public static Connection getConnection()
	{
		
		
		 
	        Connection con=null;  
	        try{  
	            Class.forName("com.mysql.jdbc.Driver");  
	            System.out.println("Driver found");
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Store","root","root");
	            System.out.println("Connection Established");
	        }catch(Exception e)
	        {System.out.println(e);}  
	        return con;  	
	}
	/*public static List<Book> viewBook() 
	{
		Session session=null;
		SessionFactory factory;
			 List<Book> allBook = new ArrayList<Book>();

			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();

			  allBook = (List<Book>)session.createQuery("from Book").list();
			t.commit();
			session.close();
	     System.out.println(allBook);
		return allBook;
	}
	*/
	
	/*public static void addBook(Book c) {
		Session session=null;
		SessionFactory factory;
		try {
			
			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
			session.save(c);
			t.commit();
			System.out.println("book added successfully"); 
			
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		finally {
			session.close();
		}
		
	}*/
	public static Book getBookById(int id ) {
	
		Session session=null;
		SessionFactory factory;
		
	
			
			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
			Object obj=session.load(Book.class,id);
			Book b=(Book)obj;
			t.commit();
			System.out.println(b);
			return b;
			
	}
	
	public static int saveBook(Book b)
	{
		 int status=0;  
	        try{  
	            Connection con=UserDao.getConnection();  
	            PreparedStatement ps=con.prepareStatement(  
	                         "insert into books100(book_id,book_name,author,price,genre,image) values (?,?,?,?,?,?)");
	            FileInputStream fis=null;
	            File image=new File(b.getImage());
	            ps.setInt(1,b.getBook_id());
	            ps.setString(3,b.getAuthor());
	            ps.setString(2,b.getBook_name());
	            ps.setFloat(4,b.getPrice());
	            ps.setString(5,b.getGenre());
	            fis=new FileInputStream(image);
	            ps.setBinaryStream(6, (InputStream)fis,(int) (image.length()));
	            
	            status=ps.executeUpdate();
	            con.close();
	        	}
	        catch(Exception e)
	        {
	        	
	            e.printStackTrace();
	        }
	        return status;
		}
	public static List<Book> getProduct() throws SQLException
	{
		List<Book>list=new ArrayList<Book>();
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from books100");
			ResultSet rs=ps.executeQuery();
			
			
			
			while(rs.next())
			{
				Blob blob=null;
				
				blob=rs.getBlob("image");
				InputStream is=blob.getBinaryStream();
				ByteArrayOutputStream os=new ByteArrayOutputStream();
				byte [] buffer=new byte[4096];
				int bytesRead=-1;
				while((bytesRead=is.read(buffer))!=-1)
				{
					os.write(buffer,0,bytesRead);
				}
				byte[] imagesBytes=os.toByteArray();
				String base64Image=Base64.getEncoder().encodeToString(imagesBytes);
				is.close();
				os.close();
				
				Book b=new Book();
				
				b.setBook_id(rs.getInt("book_id"));
				b.setBook_name(rs.getString("book_name"));
				b.setAuthor(rs.getString("author"));
				b.setPrice(rs.getFloat("price"));
				b.setGenre(rs.getString("genre"));
			
				b.setImage(base64Image);
				
				
				
				list.add(b);	
			}
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		return list;
		}
		
	public static void deleteBook(int id) {
		Session session=null;
		SessionFactory factory;
		try {
			
			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
			Book e=(Book)session.get(Book.class, id);
			System.out.println(e);
			session.delete(e);
			t.commit();
			System.out.println("Record deleted"); 
		}
		 catch(Exception ex) {
			 System.out.println(ex);
		 }
		finally {
			session.close();
			 
		}
	}
	
	
	
}
