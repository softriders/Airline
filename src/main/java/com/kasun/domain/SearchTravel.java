package com.kasun.domain;

public class SearchTravel {
	
	public String departure;
	public String goingto;
	public String jurnytype;
	public String departuredate;
	public String returndate = null;
	public int children = 0;
	public int adults;
	
	public SearchTravel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SearchTravel(String departure, String goingto, String jurnytype,
			String departuredate, String returndate, int children, int adults) {
		super();
		this.departure = departure;
		this.goingto = goingto;
		this.jurnytype = jurnytype;
		this.departuredate = departuredate;
		this.returndate = returndate;
		this.children = children;
		this.adults = adults;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getGoingto() {
		return goingto;
	}
	public void setGoingto(String goingto) {
		this.goingto = goingto;
	}
	public String getJurnytype() {
		return jurnytype;
	}
	public void setJurnytype(String jurnytype) {
		this.jurnytype = jurnytype;
	}
	public String getDeparturedate() {
		return departuredate;
	}
	public void setDeparturedate(String departuredate) {
		this.departuredate = departuredate;
	}
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public int getAdults() {
		return adults;
	}
	public void setAdults(int adults) {
		this.adults = adults;
	}
	
	
	
	

}
