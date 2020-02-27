package com.pwh.dao;

import java.util.ArrayList;

import com.pwh.bean.pwh_HotelInformation;
import com.pwh.bean.pwh_users;

public interface hotelDaoimpl {
	public boolean insert(pwh_HotelInformation h);
	public pwh_HotelInformation findbyid(int hid);
	public ArrayList<pwh_HotelInformation> findArea(String area);
	public ArrayList<pwh_HotelInformation> findAll();
	public ArrayList<pwh_HotelInformation> findbyname(String hname); 
	public boolean del(int hid);
	public ArrayList<pwh_HotelInformation> findbyOwner(String username);
}
