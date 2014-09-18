package com.kasun.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.kasun.domain.Passenger;

public class PassengerExtractor implements ResultSetExtractor<Passenger> {

	public Passenger extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {

		Passenger passenger = new Passenger();

		passenger.setId(resultSet.getString(1));
		passenger.setName(resultSet.getString(2));
		passenger.setAddress(resultSet.getString(3));
		passenger.setMobile_num(resultSet.getString(4));
		passenger.setBooking_id(resultSet.getString(5));

		return passenger;
	}

}
