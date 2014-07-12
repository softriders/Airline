package com.kasun.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.kasun.domain.Travel;
import com.kasun.domain.User;
import com.kasun.jdbc.TravelRowMapper;
import com.kasun.jdbc.UserRowMapper;

public class TravelDaoImpl implements TravelDao {

	@Autowired
	DataSource dataSource;

	@Override
	public void insertData(Travel travel) {
		String sql = "INSERT INTO travel "
				+ "(travel_id,flight_num,leaving_from, going_to,departure_date,departure_time) VALUES ( ?, ?, ?, ?, ?,?)";

		System.out.println("sql: "+sql);
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate
				.update(sql,
						new Object[] { travel.getTravel_id(),
								travel.getFlight_num(),
								travel.getLeaving_from(), travel.getGoing_to(),
								travel.getDeparture_date(),
								travel.getDeparture_time() });

	}

	@Override
	public List<Travel> getTravelList() {

		List travelList = new ArrayList();
		String sql = "select * from travel";
		System.out.println("sql: " + sql);
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		travelList = jdbcTemplate.query(sql, new TravelRowMapper());
		return travelList;

	}

	@Override
	public void updateData(Travel travel) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteData(String travel_id) {
		// TODO Auto-generated method stub

	}

	@Override
	public Travel getTravel(String travel_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
