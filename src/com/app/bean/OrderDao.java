package com.app.bean;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

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
}
