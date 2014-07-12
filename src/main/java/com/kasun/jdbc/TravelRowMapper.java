package com.kasun.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.kasun.domain.Travel;
import com.kasun.domain.User;

public class TravelRowMapper implements RowMapper<Travel>{
	
	@Override
	public Travel mapRow(ResultSet resultSet, int line) throws SQLException {
		TravelExtractor travelExtractor = new TravelExtractor();
		return travelExtractor.extractData(resultSet);
	}

}
