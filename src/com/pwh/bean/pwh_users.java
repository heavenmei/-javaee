package com.pwh.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class pwh_users implements Serializable {
	private String username;
	private String password;
	private String sex;
	private String phone;
	private String useridentity;
	private String money;
	private Set order = new HashSet(0);
	private Set comment = new HashSet(0);

	public pwh_users() {
		super();
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUseridentity() {
		return useridentity;
	}

	public void setUseridentity(String useridentity) {
		this.useridentity = useridentity;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public Set getOrder() {
		return order;
	}

	public void setOrder(Set order) {
		this.order = order;
	}

	public Set getComment() {
		return comment;
	}

	public void setComment(Set comment) {
		this.comment = comment;
	}

}
