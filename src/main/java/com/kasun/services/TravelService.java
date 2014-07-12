package com.kasun.services;

import java.util.List;

import com.kasun.domain.Travel;

public interface TravelService {
	
	public void insertData(Travel travel);

	public List<Travel> getTravelList();

	public void deleteData(String travel_id);

	public Travel getTravel(String travel_id);

	public void updateData(Travel travel);

}
