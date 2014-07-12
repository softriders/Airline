package com.kasun.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

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
		
		return travel;
	}

}
