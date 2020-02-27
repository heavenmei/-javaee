package com.pwh.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class pwh_HotelInformation implements Serializable {
	private int hotelId;
	private String hotelname;
	private String area;
	private String place;
	private String phone;
	private String owner;
	private Set room = new HashSet(0);

	public pwh_HotelInformation() {
		super();
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public pwh_HotelInformation(int hotelId, String hotelname, String area, String place, String phone) {
		super();
		this.hotelId = hotelId;
		this.hotelname = hotelname;
		this.area = area;
		this.place = place;
		this.phone = phone;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelname() {
		return hotelname;
	}

	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Set getRoom() {
		return room;
	}

	public void setRoom(Set room) {
		this.room = room;
	}

}
