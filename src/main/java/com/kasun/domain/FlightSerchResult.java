package com.kasun.domain;

public class FlightSerchResult {

	public String travel_id;
	public String flight_id;
	public String time;
	public int adults;
	public int children;
	public int price;

	public FlightSerchResult() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FlightSerchResult(String travel_id, String flight_id, String time,
			int adults, int children, int price) {
		super();
		this.travel_id = travel_id;
		this.flight_id = flight_id;
		this.time = time;
		this.adults = adults;
		this.children = children;
		this.price = price;
	}

	public String getTravel_id() {
		return travel_id;
	}

	public void setTravel_id(String travel_id) {
		this.travel_id = travel_id;
	}

	public String getFlight_id() {
		return flight_id;
	}

	public void setFlight_id(String flight_id) {
		this.flight_id = flight_id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getAdults() {
		return adults;
	}

	public void setAdults(int adults) {
		this.adults = adults;
	}

	public int getChildren() {
		return children;
	}

	public void setChildren(int children) {
		this.children = children;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
