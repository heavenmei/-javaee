package com.pwh.dao;

import java.util.ArrayList;
import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.pwh.bean.pwh_HotelInformation;
import com.pwh.bean.pwh_users;

public class hotelDao extends BaseHibernateDAO implements hotelDaoimpl{

	@Override
	public boolean insert(pwh_HotelInformation h) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			session.save(h);
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
	public pwh_HotelInformation findbyid(int hid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_HotelInformation p where p.hotelId=:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", hid);
			Iterator it=query.list().iterator();
			if(it.hasNext()) {
				pwh_HotelInformation p=new pwh_HotelInformation();
				p=(pwh_HotelInformation)it.next();
				tx.commit();
				return p;
			}
			tx.commit();
			return null;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	@Override
	public ArrayList<pwh_HotelInformation> findArea(String area) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_HotelInformation p where p.area like :a";
			Query query=session.createQuery(hql);
			query.setParameter("a", "%"+area+"%");
			Iterator it=query.list().iterator();
			ArrayList<pwh_HotelInformation> ah=new ArrayList<pwh_HotelInformation>();
			while(it.hasNext()) {
				pwh_HotelInformation p=new pwh_HotelInformation();
				p=(pwh_HotelInformation)it.next();
				ah.add(p);
			}
			tx.commit();
			return ah;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	@Override
	public ArrayList<pwh_HotelInformation> findAll() {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_HotelInformation p";
			Query query=session.createQuery(hql);
			Iterator it=query.list().iterator();
			ArrayList<pwh_HotelInformation> ah=new ArrayList<pwh_HotelInformation>();
			while(it.hasNext()) {
				pwh_HotelInformation p=new pwh_HotelInformation();
				p=(pwh_HotelInformation)it.next();
				ah.add(p);
			}
			tx.commit();
			return ah;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	@Override
	public ArrayList<pwh_HotelInformation> findbyname(String hname) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_HotelInformation p where p.hotelname like:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", "%"+hname+"%");
			Iterator it=query.list().iterator();
			ArrayList<pwh_HotelInformation> ah=new ArrayList<pwh_HotelInformation>();
			while(it.hasNext()) {
				pwh_HotelInformation p=new pwh_HotelInformation();
				p=(pwh_HotelInformation)it.next();
				ah.add(p);
			}
			tx.commit();
			return ah;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	@Override
	public boolean del(int hid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="delete from pwh_HotelInformation p where p.hotelId=:id";
			Query query=session.createQuery(hql);
			query.setParameter("id", hid);
			int x=query.executeUpdate();
			if(x>0) {
				tx.commit();
				return true;
			}
			else {
				tx.commit();
				return false;
			}
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			session.close();
		}
	}
	public ArrayList<pwh_HotelInformation> findbyOwner(String username) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_HotelInformation p where p.owner=:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", username);
			Iterator it=query.list().iterator();
			ArrayList<pwh_HotelInformation> ah=new ArrayList<pwh_HotelInformation>();
			while(it.hasNext()) {
				pwh_HotelInformation p=new pwh_HotelInformation();
				p=(pwh_HotelInformation)it.next();
				ah.add(p);
			}
			tx.commit();
			return ah;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

}
