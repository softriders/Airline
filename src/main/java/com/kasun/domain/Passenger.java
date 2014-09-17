package com.kasun.domain;

public class Passenger {
	
	public String id;
	public String name;
	public String address;
	public int mobile_num;
	public String ticket_id;
	
	public Passenger(String id, String name, String address, int mobile_num,
			String ticket_id) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.mobile_num = mobile_num;
		this.ticket_id = ticket_id;
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

	public int getMobile_num() {
		return mobile_num;
	}

	public void setMobile_num(int mobile_num) {
		this.mobile_num = mobile_num;
	}

	public String getTicket_id() {
		return ticket_id;
	}

	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}
	
	

}
