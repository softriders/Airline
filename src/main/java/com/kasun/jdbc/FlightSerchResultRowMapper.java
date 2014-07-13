package com.kasun.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.Travel;

public class FlightSerchResultRowMapper  implements RowMapper<FlightSerchResult>{

	@Override
	public FlightSerchResult mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		TravelExtractor travelExtractor = new TravelExtractor();
		return travelExtractor.extractSerchResult(rs);
	}
}
