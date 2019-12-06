package com.app.bean;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class OrderDao {

	public static void addOrder(OrderDetails o) {
		Session session=null;
		SessionFactory factory;
		try {
			
			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
			session.save(o);
			t.commit();
			System.out.println(o);
			System.out.println("order added successfully"); 
			
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		finally {
			session.close();
		}
	}
	public static List<OrderDetails> getOrderByNumber(long mobile1) 
	{
		Session session=null;
		SessionFactory factory;
			 List<OrderDetails> allorder = new ArrayList<OrderDetails>();

			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
			String hql=("from OrderDetails where mobile=:mobile1");
			Query query=session.createQuery(hql);
            query.setParameter("mobile1",mobile1 );
			  allorder = query.list();
			  t.commit();
			session.close();
	     System.out.println(allorder);
		return allorder;
	}
	
	public static List<Book> viewBookbyId(int book_iid) 
	{
		Session session=null;
		SessionFactory factory;
			 List<Book> allBook = new ArrayList<Book>();

			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
			String hql=("from Book where book_id=:book_iid");
			Query query=session.createQuery(hql);
            query.setParameter("book_iid",book_iid );
			  allBook = query.list();
			  
			  t.commit();
			session.close();
	     System.out.println(allBook);
		return allBook;
	}
	
	public static List<OrderDetails> getOrderByOid(int o_id) 
	{
		Session session=null;
		SessionFactory factory;
			 List<OrderDetails> allorder = new ArrayList<OrderDetails>();

			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction t=session.beginTransaction();
			String hql=("from OrderDetails where order_id=:o_id");
			Query query=session.createQuery(hql);
            query.setParameter("o_id",o_id );
			  allorder = query.list();
			  t.commit();
			session.close();
	     System.out.println(allorder);
		return allorder;
	}
	
}
