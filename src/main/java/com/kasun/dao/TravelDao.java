package com.kasun.dao;

import java.util.List;

import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.SearchTravel;
import com.kasun.domain.Travel;

public interface TravelDao {
	
	public void insertData(Travel travel);
	public List<Travel> getTravelList();
	public List<FlightSerchResult> getSerchedResultList(SearchTravel searchTravel);
 	public void updateData(Travel travel);
	public void deleteData(String travel_id);
	public Travel getTravel(String travel_id);

}
