package com.pwh.bean;

import java.io.Serializable;

public class pwh_Room implements Serializable {
	private Integer roomId;
	private int  hotelId;
	private String roomstyle;
	private String breakfast;
	private double unit;
	private Integer amount;
	private String discount;
	private String hotelname;
	private String username;
	public pwh_Room() {
		super();
	}

	

	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getHotelname() {
		return hotelname;
	}



	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}



	public int getHotelId() {
		return hotelId;
	}



	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}



	public Integer getRoomId() {
		return roomId;
	}

	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}

	public String getRoomstyle() {
		return roomstyle;
	}

	public void setRoomstyle(String roomstyle) {
		this.roomstyle = roomstyle;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	

	public double getUnit() {
		return unit;
	}



	public void setUnit(double unit) {
		this.unit = unit;
	}



	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

}
