package com.kasun.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.kasun.domain.Passenger;

public class PassengerDaoImpl implements PassengerDao {
	
	@Autowired
	DataSource dataSource;

	@Override
	public void insertData(Passenger passenger) {
		String sql = "INSERT INTO Passenger "
				+ "(ID,Name,Address, TP_Num, Booking_ID) VALUES (?, ?, ?, ?,?)";
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] {passenger.getId(), passenger.getName(),
						passenger.getAddress(), passenger.getMobile_num() , passenger.getBooking_id()});

	}

	@Override
	public void updateData(Passenger passenger) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteData(String passenger_id) {
		// TODO Auto-generated method stub

	}

}
