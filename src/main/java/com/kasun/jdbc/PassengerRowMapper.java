package com.kasun.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.kasun.domain.Passenger;

public class PassengerRowMapper implements RowMapper<Passenger> {

	@Override
	public Passenger mapRow(ResultSet resultSet, int line) throws SQLException {
		PassengerExtractor passengerExtractor = new PassengerExtractor();
		return passengerExtractor.extractData(resultSet);
	}
	
//	@Override
//	public Travel mapRow(ResultSet resultSet, int rowNum) throws SQLException {
//		TravelExtractor travelExtractor = new TravelExtractor();
//		return travelExtractor.extractData(resultSet);
//	}

}
