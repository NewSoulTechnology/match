package com.self.model;

public class User {
	private String name = "Huang";
	private String gender="man";
	private String Descript="ok";
	private String creatcard="6222023100092178636";
	private String bank="工商银行";
	private String city="重庆";
	private String subcity="南岸区";
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSubcity() {
		return subcity;
	}
	public void setSubcity(String subcity) {
		this.subcity = subcity;
	}
	public String getCreatcard() {
		return creatcard;
	}
	public void setCreatcard(String creatcard) {
		this.creatcard = creatcard;
	}
	public String getDescript() {
		return Descript;
	}
	public void setDescript(String descript) {
		Descript = descript;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	private double money = 200;
	private int mulmoney = 2;
	private int message = 3;
	private String cellphone="17823518864";
	private String realname="黄许飞";
	private String Identify="500230199504274370";
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getIdentify() {
		return Identify;
	}
	public void setIdentify(String identify) {
		Identify = identify;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private String email="540612010@qq.com";
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getMulmoney() {
		return mulmoney;
	}
	public void setMulmoney(int mulmoney) {
		this.mulmoney = mulmoney;
	}
	public int getMessage() {
		return message;
	}
	public void setMessage(int message) {
		this.message = message;
	}
}
