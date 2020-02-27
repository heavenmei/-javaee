package com.pwh.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.pwh.bean.*;
import com.pwh.service.registerimpl;
import com.pwh.service.userOperatorimpl;

public class orderAction {
    private registerimpl rg;
    private userOperatorimpl uo;
    private pwh_Order1 po;
    private String rid;
    private String qoid;
    private String coid;
    private String chid;
    private String com;
    public String getChid() {
        return chid;
    }
    public void setChid(String chid) {
        this.chid = chid;
    }
    public String getCom() {
        return com;
    }
    public void setCom(String com) {
        this.com = com;
    }
    public String getQoid() {
        return qoid;
    }
    public void setQoid(String qoid) {
        this.qoid = qoid;
    }
    public String getCoid() {
        return coid;
    }
    public void setCoid(String coid) {
        this.coid = coid;
    }
    public String getRid() {
        return rid;
    }
    public void setRid(String rid) {
        this.rid = rid;
    }
    public pwh_Order1 getPo() {
        return po;
    }
    public void setPo(pwh_Order1 po) {
        this.po = po;
    }
    public registerimpl getRg() {
        return rg;
    }
    public void setRg(registerimpl rg) {
        this.rg = rg;
    }
    public userOperatorimpl getUo() {
        return uo;
    }
    public void setUo(userOperatorimpl uo) {
        this.uo = uo;
    }
    public String orderRid() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        int id=Integer.parseInt(rid);
        session.setAttribute("RID", id);
        return "success";
    }
    public String addOrder() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users)session.getAttribute("user");
        if(u==null)return "login";
        int id=0;
        //int id=(int)session.getAttribute("RID");
        ArrayList<pwh_Room> arr= (ArrayList<pwh_Room>) session.getAttribute("RoomList");
        for (int i=0;i<arr.size();i++){
            if(arr.get(i).getRoomstyle().equals(po.getRoomstyle())) {
                id = arr.get(i).getRoomId();
                break;
            }
        }

        pwh_Room rm=uo.findById(id);
        if(rm.getAmount()<po.getOrdernumber())return "fail";
        po.setRoomId(id);
        po.setUsername(u.getUsername());
        po.setStatu("已预订");
        po.setHotelname(rm.getHotelname());
        //po.setRoomstyle(rm.getRoomstyle());
        po.setUname(rm.getUsername());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        po.setOrderTime(df.format(new Date()));
        if(rg.addOrder(po)) {
            int a=rm.getAmount()-po.getOrdernumber();
            if(uo.updateAmount(a, id)){
                System.out.println("成功");
                return "success";
            }
            else {
                System.out.println("fail");
                return "fail";
            }
        }
        else{
            System.out.println("fail2");
            return "fail";
        }
    }
    public String showOrder() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users)session.getAttribute("user");
        if(u==null)return "login";
        session.setAttribute("myOrder", uo.getMyorder(u.getUsername()));
        return "success";
    }

    public String showforB() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users)session.getAttribute("user");
        if(u==null)return "login";
        session.setAttribute("SOrder", uo.SOrders(u.getUsername()));
        return "success";
    }
    public String confirm() {
        uo.updateStatu("已完成", qoid);
        return "success";
    }
    public String cancel() {
        uo.updateStatu("已取消", coid);
        return "success";
    }
    public String commentHID() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users)session.getAttribute("user");
        if(u==null)return "login";
        int id1=Integer.parseInt(chid);
        pwh_Room room=uo.findById(id1);
        int id=room.getHotelId();
        session.setAttribute("chid", id);
        return "success";
    }
    public String release() {
        HttpServletRequest request=ServletActionContext.getRequest();
        HttpServletResponse response=ServletActionContext.getResponse();
        HttpSession session=request.getSession();
        pwh_users u=(pwh_users)session.getAttribute("user");
        if(u==null)return "login";
        int id=(int)session.getAttribute("chid");
        pwh_Comment c=new pwh_Comment();
        c.setCom(com);
        c.setHotelId(id);
        c.setUsername(u.getUsername());
        rg.addCom(c);
        return "success";
    }
}
