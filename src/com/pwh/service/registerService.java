package com.pwh.service;

import com.pwh.bean.pwh_Comment;
import com.pwh.bean.pwh_HotelInformation;
import com.pwh.bean.pwh_Order1;
import com.pwh.bean.pwh_Room;
import com.pwh.bean.pwh_users;
import com.pwh.dao.*;

public class registerService implements registerimpl{
	private hotelDaoimpl hd;
	private userDaoimpl ud;
	private roomDaoimpl rd;
	private orderDaoimpl od;
	private comDaoimpl cd;
	public comDaoimpl getCd() {
		return cd;
	}
	public void setCd(comDaoimpl cd) {
		this.cd = cd;
	}
	public orderDaoimpl getOd() {
		return od;
	}
	public void setOd(orderDaoimpl od) {
		this.od = od;
	}
	public roomDaoimpl getRd() {
		return rd;
	}
	public void setRd(roomDaoimpl rd) {
		this.rd = rd;
	}
	public hotelDaoimpl getHd() {
		return hd;
	}
	public void setHd(hotelDaoimpl hd) {
		this.hd = hd;
	}
	public userDaoimpl getUd() {
		return ud;
	}
	public void setUd(userDaoimpl ud) {
		this.ud = ud;
	}
	@Override
	public void addHotel(pwh_HotelInformation h) {
		hd.insert(h);
	}
	@Override
	public void addUser(pwh_users u) {
		ud.insert(u);
	}
	@Override
	public boolean isName(String username) {
		if(ud.findbyname(username)!=null)return true;
		return false;
	}
	@Override
	public boolean addRoom(pwh_Room r) {
		return rd.addRoom(r);
	}
	@Override
	public boolean addOrder(pwh_Order1 po) {
		return od.addOrder(po);
	}
	@Override
	public boolean addCom(pwh_Comment c) {
		return cd.release(c);
	}
}
