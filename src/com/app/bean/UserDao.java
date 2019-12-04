package com.app.bean;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDao 
{
	public static List<Book> viewBook() 
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
	
	
	public static void addBook(Book c) {
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
		
	}
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
	
}
