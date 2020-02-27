package com.pwh.dao;

import java.util.ArrayList;

import com.pwh.bean.pwh_Room;

public interface roomDaoimpl {
	public boolean addRoom(pwh_Room r);
	public ArrayList<pwh_Room> selectRoom(int hid);
	public boolean delHotelRoom(int hid);
	public boolean delRoom(int rid);
	public pwh_Room findByid(int rid);
	public boolean updateAmount(int a, int rid);
}
