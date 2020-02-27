package com.pwh.dao;

import java.util.ArrayList;
import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.pwh.bean.pwh_Comment;

public class comDao extends BaseHibernateDAO implements comDaoimpl {

	@Override
	public boolean release(pwh_Comment pc) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			session.save(pc);
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
	public ArrayList<pwh_Comment> find(int hid) {
		Session session=getSession();
		try {
			Transaction tx=session.beginTransaction();
			String hql="from pwh_Comment c where c.hotelId=:id";
			Query query=session.createQuery(hql);
			query.setParameter("id", hid);
			Iterator it=query.list().iterator();
			ArrayList<pwh_Comment> pc=new ArrayList<pwh_Comment>();
			while(it.hasNext()) {
				pwh_Comment c=new pwh_Comment();
				c=(pwh_Comment)it.next();
				pc.add(c);
			}
			tx.commit();
			return pc;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}
	
}
