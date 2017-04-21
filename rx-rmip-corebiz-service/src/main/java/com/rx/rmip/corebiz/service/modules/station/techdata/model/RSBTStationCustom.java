package com.rx.rmip.corebiz.service.modules.station.techdata.model;

public class RSBTStationCustom extends RSBTStation {
	//接收页面中的经度信息
	private double lg1;
	private double lg2;
	private double lg3;
	//接收页面中的纬度信息
	private double la1;
	private double la2;
	private double la3;
	//工作时间是否全天，0否   1是
	private int allday;

	public double getLg1() {
		return lg1;
	}
	public void setLg1(double lg1) {
		this.lg1 = lg1;
	}
	public double getLg2() {
		return lg2;
	}
	public void setLg2(double lg2) {
		this.lg2 = lg2;
	}
	public double getLg3() {
		return lg3;
	}
	public void setLg3(double lg3) {
		this.lg3 = lg3;
	}
	public double getLa1() {
		return la1;
	}
	public void setLa1(double la1) {
		this.la1 = la1;
	}
	public double getLa2() {
		return la2;
	}
	public void setLa2(double la2) {
		this.la2 = la2;
	}
	public double getLa3() {
		return la3;
	}
	public void setLa3(double la3) {
		this.la3 = la3;
	}
	public int getAllday() {
		return allday;
	}
	public void setAllday(int allday) {
		this.allday = allday;
	}


}
