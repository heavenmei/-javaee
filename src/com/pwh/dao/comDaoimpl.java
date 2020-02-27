package com.pwh.dao;

import java.util.ArrayList;

import com.pwh.bean.pwh_Comment;

public interface comDaoimpl {
	public boolean release(pwh_Comment pc);
	public ArrayList<pwh_Comment> find(int hid);
}
