package com.pwh.dao;

import java.util.ArrayList;

import com.pwh.bean.pwh_users;

public interface userDaoimpl {
	public boolean insert(pwh_users u);
	public pwh_users findbyname(String username);
	public boolean update(String username, String psw, String phone);
	public ArrayList<pwh_users> findAll();
	public boolean delUser(String username);
}
