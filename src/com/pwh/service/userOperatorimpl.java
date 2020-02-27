package com.pwh.service;

import java.util.ArrayList;

import com.pwh.bean.pwh_Comment;
import com.pwh.bean.pwh_HotelInformation;
import com.pwh.bean.pwh_Order1;
import com.pwh.bean.pwh_Room;
import com.pwh.bean.pwh_users;

public interface userOperatorimpl {
	public boolean login(String username, String psw);
	public pwh_users getbyname(String username);
	public boolean delUser(String username);
	public ArrayList<pwh_HotelInformation> getList(String area);
	public ArrayList<pwh_HotelInformation> getAllList();
	public ArrayList<pwh_HotelInformation> findbyname(String hname);
	public boolean delHotel(int hid);
	public boolean update(String username, String psw, String phone);
	public ArrayList<pwh_users> findAll();
	public ArrayList<pwh_HotelInformation> findbyOwner(String username);
	public ArrayList<pwh_Room> selectRoom(int hid);
	public boolean delHotelRoom(int hid);
	public boolean delRoom(int rid);
	public pwh_Room findById(int rid);
	public boolean updateAmount(int a, int rid);
	public ArrayList<pwh_Order1> getMyorder(String username);
	public pwh_HotelInformation findHbyid(int hid);
	public ArrayList<pwh_Order1> AllOrders();
	public ArrayList<pwh_Order1> SOrders(String username);
	public boolean updateStatu(String s, String oid);
	public ArrayList<pwh_Comment> find(int hid);
}
