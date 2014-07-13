package com.kasun.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kasun.dao.TravelDao;
import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.SearchTravel;
import com.kasun.domain.Travel;

public class TravelServiceImpl implements TravelService{
	
	@Autowired
	TravelDao traveldao;

	@Override
	public void insertData(Travel travel) {
		traveldao.insertData(travel);
		
	}

	@Override
	public List<Travel> getTravelList() {
		return traveldao.getTravelList();
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

	@Override
	public void updateData(Travel travel) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<FlightSerchResult> getSerchedTravelList(SearchTravel searchTravel) {
		return traveldao.getSerchedResultList(searchTravel);
	}

}
