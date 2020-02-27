package com.pwh.bean;

import java.io.Serializable;

public class pwh_Comment implements Serializable {
	private String cid;
	private int hotelId;
	private String com;
	private String username;

	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public pwh_Comment() {
		super();
	}

	

	public int getHotelId() {
		return hotelId;
	}



	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}



	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}



	public String getCom() {
		return com;
	}



	public void setCom(String com) {
		this.com = com;
	}

	

}
