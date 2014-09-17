package com.kasun.dao;

import com.kasun.domain.Passenger;

public interface PassengerDao {
	
	public void insertData(Passenger passenger);
	
	public void updateData(Passenger passenger);
	
	public void deleteData(String passenger_id);

}
