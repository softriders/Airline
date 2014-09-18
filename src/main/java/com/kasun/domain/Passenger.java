package com.kasun.domain;

public class Passenger {
	
	public String id;
	public String name;
	public String address;
	public String mobile_num;
	public String booking_id;
	
	public Passenger() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Passenger(String id, String name, String address, String mobile_num, String booking_id) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.mobile_num = mobile_num;
		this.booking_id = booking_id;
	}
	
	public Passenger(String id, String name, String address, String mobile_num) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.mobile_num = mobile_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile_num() {
		return mobile_num;
	}

	public void setMobile_num(String mobile_num) {
		this.mobile_num = mobile_num;
	}

	public String getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(String ticket_id) {
		this.booking_id = ticket_id;
	}
}
