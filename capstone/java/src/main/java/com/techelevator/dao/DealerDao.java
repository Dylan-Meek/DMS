package com.techelevator.dao;

import com.techelevator.model.Car;

import java.util.List;

public interface DealerDao {

    List<Car> getInventory();

}
