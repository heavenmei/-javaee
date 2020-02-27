package com.pwh.dao;

import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.pwh.bean.pwh_users;

public class userDao extends BaseHibernateDAO implements userDaoimpl {

	@Override
	public boolean insert(pwh_users u) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			u.setMoney("0");
			session.save(u);
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
	public pwh_users findbyname(String username) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_users p where p.username=:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", username);
			Iterator it=query.list().iterator();
			if(it.hasNext()) {
				pwh_users p=new pwh_users();
				p=(pwh_users)it.next();
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
	public boolean update(String username,String psw, String phone) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="update pwh_users p set p.phone=:phone,p.password=:psw where p.username=:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", username);
			query.setParameter("phone", phone);
			query.setParameter("psw", psw);
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
	public ArrayList<pwh_users> findAll(){
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_users p";
			Query query=session.createQuery(hql);
			ArrayList<pwh_users> au=new ArrayList<pwh_users>();
			Iterator it=query.list().iterator();
			while(it.hasNext()) {
				pwh_users p=new pwh_users();
				p=(pwh_users)it.next();
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
	public boolean delUser(String username) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="delete pwh_users p where p.username=:name";
			Query query=session.createQuery(hql);
			query.setParameter("name", username);
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
