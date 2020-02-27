package com.pwh.dao;

import java.util.ArrayList;

import com.pwh.bean.pwh_Order1;
import com.pwh.bean.pwh_users;

public interface orderDaoimpl {
	public boolean addOrder(pwh_Order1 po);
	public ArrayList<pwh_Order1> myOrders(String username);
	public ArrayList<pwh_Order1> AllOrders();
	public ArrayList<pwh_Order1> Sorders(String username);
	public boolean updateStatu(String s, String oid);
}
