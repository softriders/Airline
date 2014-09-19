package com.kasun.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kasun.dao.TravelDao;
import com.kasun.domain.FlightSerchResult;
import com.kasun.domain.SearchTravel;
import com.kasun.domain.Travel;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TravelServiceImpl implements TravelService{
	
	private static final Logger log = LoggerFactory.getLogger(TravelServiceImpl.class);
	
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
		log.info("deleteData : TravelService");
		traveldao.deleteData(travel_id);
	}

	@Override
	public Travel getTravel(String travel_id) {
		return traveldao.getTravel(travel_id);
	}

	@Override
	public void updateData(Travel travel) {
		// TODO Auto-generated method stub
		traveldao.updateData(travel);
		
	}

	@Override
	public List<FlightSerchResult> getSerchedTravelList(SearchTravel searchTravel) {
		return traveldao.getSerchedResultList(searchTravel);
	}

}
