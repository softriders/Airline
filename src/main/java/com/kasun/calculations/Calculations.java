package com.kasun.calculations;

public class Calculations {

	public static int calculateTicketPrice(int priceRateAdult,
			int priceRateChild, int adult, int children) {
		
		int priceForAdults;
		int priceForChildren; 
		int total = 0;
		
		priceForAdults = priceRateAdult*adult;
		priceForChildren = priceRateChild*children;
		
		total = priceForAdults + priceForChildren;

		return total;
	}

}
