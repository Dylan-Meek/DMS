package com.techelevator.dao;

import com.techelevator.model.Car;
import com.techelevator.model.User;

import java.util.List;

public interface DealerDao {

    List<Car> getInventory();

    boolean addVehicle(Car car);

    Car purchaseVehicle(Car car, int userId);

}
