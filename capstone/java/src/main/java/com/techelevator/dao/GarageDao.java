package com.techelevator.dao;

import com.techelevator.model.Car;

import java.util.List;

public interface GarageDao {

    List<Car> getAllCarsByUserId(int userId);
}
