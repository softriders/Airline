package com.kasun.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.kasun.calculations.Calculations;
import com.kasun.controller.HomePageController;
import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.Travel;

public class TravelExtractor implements ResultSetExtractor<Travel> {

	@Override
	public Travel extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		Travel travel = new Travel();

		travel.setTravel_id(resultSet.getString(1));
		travel.setFlight_num(resultSet.getString(2));
		travel.setLeaving_from(resultSet.getString(3));
		travel.setGoing_to(resultSet.getString(4));
		travel.setDeparture_date(resultSet.getString(5));
		travel.setDeparture_time(resultSet.getString(6));
		travel.setPricePerAdult(resultSet.getInt(7));
		travel.setPricePerChild(resultSet.getInt(8));

		System.out.println("It is going to:  " + travel.getGoing_to());

		return travel;
	}

	public FlightSerchResult extractSerchResult(ResultSet resultSet)
			throws SQLException, DataAccessException {

		System.out.println("Method: extractSerchResult");

		int price;

		FlightSerchResult flightSerchResult = new FlightSerchResult();
		flightSerchResult.setTravel_id(resultSet.getString(1));
		flightSerchResult.setFlight_id(resultSet.getString(2));
		flightSerchResult.setTime(resultSet.getString(6));
		System.out.println("Time: " + flightSerchResult.getTime());
		
		price = Calculations.calculateTicketPrice(resultSet.getInt(7),
				resultSet.getInt(8), HomePageController.adults, HomePageController.children);

		flightSerchResult.setPrice(price);
		System.out.println("Price: " + flightSerchResult.getPrice()+"/=");

		return flightSerchResult;
	}
}
