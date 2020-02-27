package com.pwh.dao;

import java.util.ArrayList;
import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.pwh.bean.pwh_Room;
import com.pwh.bean.pwh_users;

public class roomDao extends BaseHibernateDAO implements roomDaoimpl{

	@Override
	public boolean addRoom(pwh_Room r) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			session.save(r);
			tx.commit();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			session.close();
		}
	}
	public ArrayList<pwh_Room> selectRoom(int hid){
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_Room p where p.hotelId=:hid";
			Query query=session.createQuery(hql);
			query.setParameter("hid", hid);
			ArrayList<pwh_Room> au=new ArrayList<pwh_Room>();
			Iterator it=query.list().iterator();
			while(it.hasNext()) {
				pwh_Room p=new pwh_Room();
				p=(pwh_Room)it.next();
				au.add(p);
			}
			tx.commit();
			return au;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}
	@Override
	public boolean delHotelRoom(int hid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="delete pwh_Room p where p.hotelId=:hid";
			Query query=session.createQuery(hql);
			query.setParameter("hid", hid);
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
	public boolean delRoom(int rid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="delete pwh_Room p where p.roomId=:rid";
			Query query=session.createQuery(hql);
			query.setParameter("rid", rid);
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
	@Override
	public pwh_Room findByid(int rid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_Room p where p.roomId=:rid";
			Query query=session.createQuery(hql);
			query.setParameter("rid", rid);
			Iterator it=query.list().iterator();
			if(it.hasNext()) {
				pwh_Room pr=new pwh_Room();
				pr=(pwh_Room)it.next();
				tx.commit();
				return pr;
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
	public boolean updateAmount(int a,int rid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="update pwh_Room p set p.amount=:a where p.roomId=:rid";
			Query query=session.createQuery(hql);
			query.setParameter("rid", rid);
			query.setParameter("a", a);
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
