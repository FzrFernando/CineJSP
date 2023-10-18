package com.jacaranda.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.SelectionQuery;

import com.jacaranda.model.Cinema;
import com.jacaranda.util.BdUtil;


public class CineRepository {
	
	public static Cinema annadirCine(Cinema c) {
		Transaction transaction = null;
		Cinema result = null;
		
		if (c.getCinema() != null) {
			
			Session session = BdUtil.getSessionFactory().openSession();
			transaction = (Transaction) session.beginTransaction();
			try {
				result = session.merge(c);
				transaction.commit();
			} catch (Exception e) {
				transaction.rollback();
			}
			session.close();	
		}
		return result;
	}
	
	public static void delCinema(String cine) {
		Cinema result = null;
		Session session = BdUtil.getSessionFactory().openSession();
		
		SelectionQuery<Cinema> q =
				session.createSelectionQuery("From Cinema where cinema = :cinema", Cinema.class);
				q.setParameter("cinema", cine);
				List<Cinema> cinemas = q.getResultList();
				if (cinemas.size() != 0) result = cinemas.get(0);
		
		session.remove(result);
	}
	
	public static Cinema getCinema(String cine) {
		Cinema result = null;
		Session session = BdUtil.getSessionFactory().openSession();
		
		SelectionQuery<Cinema> q =
				session.createSelectionQuery("From Cinema where cinema = :cinema", Cinema.class);
				q.setParameter("cinema", cine);
				List<Cinema> cinemas = q.getResultList();
				if (cinemas.size() != 0) result = cinemas.get(0);
		
		return result;
	}
	
	public static List<Cinema> getCinemas() {
		Session session = BdUtil.getSessionFactory().openSession();
		List <Cinema> r = (List<Cinema>) session.createSelectionQuery("From Cinema").getResultList();
		return r;
	}
}
