package com.pwh.dao;

import java.util.ArrayList;
import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.pwh.bean.pwh_Order1;

public class orderDao extends BaseHibernateDAO implements orderDaoimpl{

	@Override
	public boolean addOrder(pwh_Order1 po) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			session.save(po);
			tx.commit();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			session.close();
		}
	}

	@Override
	public ArrayList<pwh_Order1> myOrders(String username) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_Order1 po where po.username=:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", username);
			ArrayList<pwh_Order1> ap=new ArrayList<pwh_Order1>();
			Iterator it=query.list().iterator();
			while(it.hasNext()) {
				pwh_Order1 po=new pwh_Order1();
				po=(pwh_Order1)it.next();
				ap.add(po);
			}
			tx.commit();
			return ap;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	@Override
	public ArrayList<pwh_Order1> AllOrders() {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_Order1 po ";
			Query query=session.createQuery(hql);
			ArrayList<pwh_Order1> ap=new ArrayList<pwh_Order1>();
			Iterator it=query.list().iterator();
			while(it.hasNext()) {
				pwh_Order1 po=new pwh_Order1();
				po=(pwh_Order1)it.next();
				ap.add(po);
			}
			tx.commit();
			return ap;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	@Override
	public ArrayList<pwh_Order1> Sorders(String username) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_Order1 po where po.uname=:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", username);
			ArrayList<pwh_Order1> ap=new ArrayList<pwh_Order1>();
			Iterator it=query.list().iterator();
			while(it.hasNext()) {
				pwh_Order1 po=new pwh_Order1();
				po=(pwh_Order1)it.next();
				ap.add(po);
			}
			tx.commit();
			return ap;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	@Override
	public boolean updateStatu(String s,String oid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="update pwh_Order1 o set o.statu=:s where o.oid=:oid";
			Query query=session.createQuery(hql);
			query.setParameter("oid", oid);
			query.setParameter("s", s);
			int x=query.executeUpdate();
			if(x>0) {
				tx.commit();
				return true;
			}
			tx.commit();
			return false;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			session.close();
		}
	}

}
