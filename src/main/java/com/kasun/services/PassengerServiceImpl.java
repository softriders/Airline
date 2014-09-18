package com.kasun.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kasun.dao.PassengerDao;
import com.kasun.domain.Passenger;

public class PassengerServiceImpl implements PassengerService {
	
	@Autowired
	PassengerDao passengerDao;

	@Override
	public void insertData(Passenger passenger) {
		passengerDao.insertData(passenger);

	}

	@Override
	public void deleteData(String passenger_id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updatePassenger(Passenger passenger) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Passenger> getPassengerList() {
		return passengerDao.getPassengerList();
	}

}
