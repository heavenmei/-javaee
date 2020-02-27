package com.pwh.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.pwh.bean.*;
import com.pwh.service.*;

public class userAction {
    private pwh_HotelInformation ph;
    private pwh_users pu;
    private registerimpl rg;
    private userOperatorimpl uo;
    private String area;
    private String hname;
    private String dhid;
    private String rhid;
    private String hid;
    private pwh_Room r;
    private String drid;
    private String username;
    public String getDrid() {
        return drid;
    }
    public void setDrid(String drid) {
        this.drid = drid;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getHid() {
        return hid;
    }
    public void setHid(String hid) {
        this.hid = hid;
    }
    public String getRhid() {
        return rhid;
    }
    public void setRhid(String rhid) {
        this.rhid = rhid;
    }
    public pwh_Room getR() {
        return r;
    }
    public void setR(pwh_Room r) {
        this.r = r;
    }
    public String getDhid() {
        return dhid;
    }
    public void setDhid(String dhid) {
        this.dhid = dhid;
    }
    public String getHname() {
        return hname;
    }
    public void setHname(String hname) {
        this.hname = hname;
    }
    public String getArea() {
        return area;
    }
    public void setArea(String area) {
        this.area = area;
    }
    public userOperatorimpl getUo() {
        return uo;
    }
    public void setUo(userOperatorimpl uo) {
        this.uo = uo;
    }
    public registerimpl getRg() {
        return rg;
    }
    public void setRg(registerimpl rg) {
        this.rg = rg;
    }
    public pwh_HotelInformation getPh() {
        return ph;
    }
    public void setPh(pwh_HotelInformation ph) {
        this.ph = ph;
    }
    public pwh_users getPu() {
        return pu;
    }
    public void setPu(pwh_users pu) {
        this.pu = pu;
    }
    public String login() {
        if(uo.login(pu.getUsername(), pu.getPassword())) {
            HttpServletRequest request=ServletActionContext.getRequest();
            HttpServletResponse response=ServletActionContext.getResponse();
            HttpSession session=request.getSession();
            session.setAttribute("user", uo.getbyname(pu.getUsername()));
            return "success";
        }
        return "fail";
    }
    public String registerforUser() {
        if(!rg.isName(pu.getUsername())) {
            rg.addUser(pu);
            return "success";
        }
        else return "fail";
    }
    public String registerforHotel() {
        try {
            rg.addHotel(ph);
            return "success";
        }catch(Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }
    public String divide() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users) session.getAttribute("user");
        System.out.println(u.getUseridentity());
        System.out.println(u.getUsername());
        if(u==null)return "login";
        if(u.getUseridentity().equals("管理员")){
            System.out.println("管理员");
            return "one";
        }
        if(u.getUseridentity().equals("商家")) {
            System.out.println("商家");
            return "two";
        }
        else if(u.getUseridentity().equals("普通用户")){
            return "three";
        }
        return "three";
    }
    public String search() {
        try {
            HttpServletRequest request=ServletActionContext.getRequest();
            HttpServletResponse response=ServletActionContext.getResponse();
            HttpSession session=request.getSession();
            session.setAttribute("result", uo.getList(area));
            return "success";
        }catch(Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }
    public String findAllHotel() {
        try {
            HttpServletRequest request=ServletActionContext.getRequest();
            HttpServletResponse response=ServletActionContext.getResponse();
            HttpSession session=request.getSession();
            session.setAttribute("AllHotel", uo.getAllList());
            return "success";
        }catch(Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }
    public String addHotel() {
        try {
            HttpServletRequest request=ServletActionContext.getRequest();
            HttpServletResponse response=ServletActionContext.getResponse();
            HttpSession session=request.getSession();
            pwh_users u=(pwh_users) session.getAttribute("user");
            ph.setOwner(u.getUsername());
            rg.addHotel(ph);
            return "success";
        }catch(Exception e) {
            e.printStackTrace();
            return "fail";
        }

    }
    public String selectDel() {
        try {
            HttpServletRequest request=ServletActionContext.getRequest();
            HttpServletResponse response=ServletActionContext.getResponse();
            HttpSession session=request.getSession();
            session.setAttribute("delresult", uo.findbyname(hname));
            return "success";
        }catch(Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }
    public String delHotel() {
        int id=Integer.parseInt(dhid);
        if(uo.delHotelRoom(id)) {
            if(uo.delHotel(id))return "success";
            else return "fail";
        }
        else return "fail";
    }
    public String AllUser() {
        try {
            HttpServletRequest request=ServletActionContext.getRequest();
            HttpServletResponse response=ServletActionContext.getResponse();
            HttpSession session=request.getSession();
            session.setAttribute("AllUser", uo.findAll());
            return "success";
        }catch(Exception e) {
            e.printStackTrace();
            return "fail";
        }
    }
    public String updateUser() {
        if(uo.update(pu.getUsername(), pu.getPassword(),pu.getPhone()))return "success";
        else return "fail";
    }
    public String MyHotel() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users) session.getAttribute("user");
        if(u==null)return "login";
        session.setAttribute("MyHotel", uo.findbyOwner(u.getUsername()));
        return "success";
    }
    public String roomHid() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        int hotelId=Integer.parseInt(rhid);
        session.setAttribute("roomHid", hotelId);
        return "success";
    }
    public String addRoom() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users) session.getAttribute("user");
        if(u==null)return "login";
        int hotelId=(int) session.getAttribute("roomHid");
        pwh_HotelInformation pwh=uo.findHbyid(hotelId);
        r.setHotelname(pwh.getHotelname());
        r.setHotelId(hotelId);
        r.setUsername(pwh.getOwner());
        if(rg.addRoom(r))return "success";
        else return "fail";
    }
    public String detail() {
        int h=Integer.parseInt(hid);
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        session.setAttribute("RoomList", uo.selectRoom(h));
        int id=Integer.parseInt(hid);
        session.setAttribute("commentList",uo.find(id));
        return "success";
    }
    public String deleteUser() {
        if(uo.delUser(username))return "success";
        else return "fail";
    }
    public String delRoom() {
        int id=Integer.parseInt(drid);
        if(uo.delRoom(id))return "success";
        else return "fail";
    }
}
