package com.self.model;

public class Project {
     private String time="2017-09-18 20:55";//订单创建时间
     private String orderid="6458053";//订单号
     private String putman="6458053";//项目发起人
     private String proimage="#";//项目图片
     private String proname="一场美食盛宴#“中国新锐青年杰出工作者巴黎当代艺术展”";//项目名
     private String prourl="#";//项目详情页面
     public String getProurl() {
		return prourl;
	}
	public void setProurl(String prourl) {
		this.prourl = prourl;
	}
	private String prostate="众筹中";//项目状态
     private String proaim="200000";//项目目标
     private String proprocess="24";//项目进度
     private String paydegree="2000";//支持额度
     private String paystate="未支付";//支付状态
     private String opeartion="去支付";//操作
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getPutman() {
		return putman;
	}
	public void setPutman(String putman) {
		this.putman = putman;
	}
	public String getProimage() {
		return proimage;
	}
	public void setProimage(String proimage) {
		this.proimage = proimage;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getProstate() {
		return prostate;
	}
	public void setProstate(String prostate) {
		this.prostate = prostate;
	}
	public String getProaim() {
		return proaim;
	}
	public void setProaim(String proaim) {
		this.proaim = proaim;
	}
	public String getProprocess() {
		return proprocess;
	}
	public void setProprocess(String proprocess) {
		this.proprocess = proprocess;
	}
	public String getPaydegree() {
		return paydegree;
	}
	public void setPaydegree(String paydegree) {
		this.paydegree = paydegree;
	}
	public String getPaystate() {
		return paystate;
	}
	public void setPaystate(String paystate) {
		this.paystate = paystate;
	}
	public String getOpeartion() {
		return opeartion;
	}
	public void setOpeartion(String opeartion) {
		this.opeartion = opeartion;
	}
}
