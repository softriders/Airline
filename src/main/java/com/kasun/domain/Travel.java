package com.kasun.domain;

public class Travel {

	public String travel_id;
	public String flight_num;
	public String leaving_from;
	public String going_to;
	public String departure_date;
	public String departure_time;
	public int pricePerAdult;
	public int pricePerChild;

	public Travel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Travel(String travel_id, String flight_num, String leaving_from,
			String going_to, String departure_date, String departure_time,
			int pricePerAdult, int pricePerChild) {
		super();
		this.travel_id = travel_id;
		this.flight_num = flight_num;
		this.leaving_from = leaving_from;
		this.going_to = going_to;
		this.departure_date = departure_date;
		this.departure_time = departure_time;
		this.pricePerAdult = pricePerAdult;
		this.pricePerChild = pricePerChild;
	}

	public String getTravel_id() {
		return travel_id;
	}

	public void setTravel_id(String travel_id) {
		this.travel_id = travel_id;
	}

	public String getFlight_num() {
		return flight_num;
	}

	public void setFlight_num(String flight_num) {
		this.flight_num = flight_num;
	}

	public String getLeaving_from() {
		return leaving_from;
	}

	public void setLeaving_from(String leaving_from) {
		this.leaving_from = leaving_from;
	}

	public String getGoing_to() {
		return going_to;
	}

	public void setGoing_to(String going_to) {
		this.going_to = going_to;
	}

	public String getDeparture_date() {
		return departure_date;
	}

	public void setDeparture_date(String departure_date) {
		this.departure_date = departure_date;
	}

	public String getDeparture_time() {
		return departure_time;
	}

	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}

	public int getPricePerAdult() {
		return pricePerAdult;
	}

	public void setPricePerAdult(int pricePerAdult) {
		this.pricePerAdult = pricePerAdult;
	}

	public int getPricePerChild() {
		return pricePerChild;
	}

	public void setPricePerChild(int pricePerChild) {
		this.pricePerChild = pricePerChild;
	}

}
