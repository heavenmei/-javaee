package com.pwh.service;

import com.pwh.bean.pwh_Comment;
import com.pwh.bean.pwh_HotelInformation;
import com.pwh.bean.pwh_Order1;
import com.pwh.bean.pwh_Room;
import com.pwh.bean.pwh_users;

public interface registerimpl {
	public void addHotel(pwh_HotelInformation h);
	public void addUser(pwh_users u);
	public boolean isName(String username);
	public boolean addRoom(pwh_Room r);
	public boolean addOrder(pwh_Order1 po);
	public boolean addCom(pwh_Comment c);
}
