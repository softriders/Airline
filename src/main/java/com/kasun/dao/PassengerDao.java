package com.kasun.dao;

import java.util.List;

import com.kasun.domain.Passenger;

public interface PassengerDao {
	
	public List<Passenger> getPassengerList();
	
	public void insertData(Passenger passenger);
	
	public void updateData(Passenger passenger);
	
	public void deleteData(String passenger_id);

}
