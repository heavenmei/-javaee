package com.pwh.service;

import java.util.ArrayList;

import com.pwh.bean.pwh_Comment;
import com.pwh.bean.pwh_HotelInformation;
import com.pwh.bean.pwh_Order1;
import com.pwh.bean.pwh_Room;
import com.pwh.bean.pwh_users;
import com.pwh.dao.comDaoimpl;
import com.pwh.dao.hotelDaoimpl;
import com.pwh.dao.orderDaoimpl;
import com.pwh.dao.roomDaoimpl;
import com.pwh.dao.userDaoimpl;

public class userService implements userOperatorimpl{
	private userDaoimpl ud;
	private hotelDaoimpl hd;
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
	public boolean login(String username, String psw) {
		try {
		pwh_users u=ud.findbyname(username);
		if(u==null)return false;
		if(u.getPassword().equals(psw))return true;
		else return false;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public pwh_users getbyname(String username) {
		return ud.findbyname(username);
	}
	@Override
	public ArrayList<pwh_HotelInformation> getList(String area) {
		return hd.findArea(area);
	}
	@Override
	public ArrayList<pwh_HotelInformation> getAllList() {
		return hd.findAll();
	}
	@Override
	public ArrayList<pwh_HotelInformation> findbyname(String hname) {
		return hd.findbyname(hname);
	}
	@Override
	public boolean delHotel(int hid) {
		try {
			hd.del(hid);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean update(String username,String psw, String phone) {
		return ud.update(username, psw,phone);
	}
	public ArrayList<pwh_users> findAll(){
		return ud.findAll();
	}
	@Override
	public ArrayList<pwh_HotelInformation> findbyOwner(String username) {
		return hd.findbyOwner(username);
	}
	@Override
	public ArrayList<pwh_Room> selectRoom(int hid) {
		return rd.selectRoom(hid);
	}
	@Override
	public boolean delHotelRoom(int hid) {
		try{
			rd.delHotelRoom(hid);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean delUser(String username) {
		pwh_users u=ud.findbyname(username);
		if(u==null)return false;
		if(u.getUseridentity()=="管理员")return false;
		if(u.getUseridentity()=="普通用户")return ud.delUser(username);
		ArrayList<pwh_HotelInformation> ah=new ArrayList<pwh_HotelInformation>();
		ah=this.findbyOwner(u.getUsername());
		for(pwh_HotelInformation h:ah) {
			if(!this.delHotelRoom(h.getHotelId()))return false;
			if(!this.delHotel(h.getHotelId()))return false;
		}
		return ud.delUser(username);
	}
	@Override
	public boolean delRoom(int rid) {
		return rd.delRoom(rid);
	}
	@Override
	public pwh_Room findById(int rid) {
		return rd.findByid(rid);
	}
	@Override
	public boolean updateAmount(int a, int rid) {
		return rd.updateAmount(a, rid);
	}
	@Override
	public ArrayList<pwh_Order1> getMyorder(String username) {
		return od.myOrders(username);
	}
	@Override
	public pwh_HotelInformation findHbyid(int hid) {
		return hd.findbyid(hid);
	}
	@Override
	public ArrayList<pwh_Order1> AllOrders() {
		return od.AllOrders();
	}
	@Override
	public ArrayList<pwh_Order1> SOrders(String username) {
		return od.Sorders(username);
	}
	@Override
	public boolean updateStatu(String s, String oid) {
		return od.updateStatu(s, oid);
	}
	@Override
	public ArrayList<pwh_Comment> find(int hid) {
		return cd.find(hid);
	}
}
