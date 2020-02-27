package com.pwh.bean;

import java.io.Serializable;

public class pwh_Order1 implements Serializable {
	private String oid;
	private String username;
	private int roomId;
	private String hotelname;
	private int ordernumber;
	private String uname;
	private String roomstyle;
	private String checkinTime;
	private String checkoutTime;
	private String orderTime;
	private String statu;


	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getRoomstyle() {
		return roomstyle;
	}

	public void setRoomstyle(String roomstyle) {
		this.roomstyle = roomstyle;
	}

	public String getHotelname() {
		return hotelname;
	}

	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}

	public pwh_Order1() {
		super();
	}


	

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public String getStatu() {
		return statu;
	}

	public void setStatu(String statu) {
		this.statu = statu;
	}

	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getOrdernumber() {
		return ordernumber;
	}

	public void setOrdernumber(int ordernumber) {
		this.ordernumber = ordernumber;
	}

	public String getCheckinTime() {
		return checkinTime;
	}

	public void setCheckinTime(String checkinTime) {
		this.checkinTime = checkinTime;
	}

	public String getCheckoutTime() {
		return checkoutTime;
	}

	public void setCheckoutTime(String checkoutTime) {
		this.checkoutTime = checkoutTime;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

}
