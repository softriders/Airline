package com.kasun.services;

import com.kasun.domain.Passenger;

public interface PassengerService {

	public void insertData(Passenger passenger);

	public void deleteData(String passenger_id);

	public void updatePassenger(Passenger passenger);

}
