package com.kasun.dao;

import java.util.List;

import com.kasun.domain.Travel;
import com.kasun.domain.User;

public interface TravelDao {
	
	public void insertData(Travel travel);
	public List<Travel> getTravelList();
	public void updateData(Travel travel);
	public void deleteData(String travel_id);
	public Travel getTravel(String travel_id);

}
