package com.kasun.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.kasun.domain.Passenger;
import com.kasun.jdbc.PassengerRowMapper;
import com.kasun.jdbc.TravelRowMapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PassengerDaoImpl implements PassengerDao {
	
	private static final Logger log = LoggerFactory.getLogger(PassengerDaoImpl.class);
	
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

	@Override
	public List<Passenger> getPassengerList() {
		List passengerlList = new ArrayList();
		String sql = "select * from Passenger";
		log.info("sql: " + sql);
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		passengerlList = jdbcTemplate.query(sql, new PassengerRowMapper());
		return passengerlList;
	}

}
