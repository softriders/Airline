package com.kasun.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.SearchTravel;
import com.kasun.domain.Travel;
import com.kasun.jdbc.FlightSerchResultRowMapper;
import com.kasun.jdbc.TravelRowMapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TravelDaoImpl implements TravelDao {
	
	private static final Logger log = LoggerFactory.getLogger(TravelDaoImpl.class);

	@Autowired
	DataSource dataSource;

	@Override
	public void insertData(Travel travel) {
		String sql = "INSERT INTO travel "
				+ "(travel_id,flight_num,leaving_from, going_to,departure_date,departure_time,price_per_adult,price_per_child)"
				+ " VALUES ( ?, ?, ?, ?, ?, ?, ?,?)";

		System.out.println("sql: " + sql);

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { travel.getTravel_id(), travel.getFlight_num(),
						travel.getLeaving_from(), travel.getGoing_to(),
						travel.getDeparture_date(), travel.getDeparture_time(),
						travel.getPricePerAdult(), travel.getPricePerChild() });

	}

	@Override
	public List<Travel> getTravelList() {

		List travelList = new ArrayList();
		String sql = "select * from travel";
		log.info("sql: " + sql);
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
		String sql = "delete from travel where travel_id="+travel_id+";";
		log.info("Quary : "+sql);
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);
	}

	@Override
	public Travel getTravel(String travel_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FlightSerchResult> getSerchedResultList(SearchTravel searchTravel) {
		List travelList = new ArrayList();
		String sql = "select * from travel where leaving_from='"
				+ searchTravel.getDeparture()+ "' AND going_to='" + searchTravel.getGoingto()
				+ "' AND departure_date='" + searchTravel.getDeparturedate() + "'";
		System.out.println("sql: " + sql);
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		travelList = jdbcTemplate.query(sql, new FlightSerchResultRowMapper());
		return travelList;
	}

}
