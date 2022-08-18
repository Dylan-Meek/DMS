package com.techelevator.controller;

import com.techelevator.dao.DealerDao;
import com.techelevator.dao.GarageDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Car;
import com.techelevator.model.User;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
public class DealerController {

    private DealerDao dealerDao;
    private UserDao userDao;
    private GarageDao garageDao;

    public DealerController(DealerDao dealerDao, UserDao userDao, GarageDao garageDao) {
        this.dealerDao = dealerDao;
        this.userDao = userDao;
        this.garageDao = garageDao;
    }

    @GetMapping(path = "/inventory")
    public List<Car> displayInventory() {
        //add authorization for dealer users here
        return dealerDao.getInventory();
    }

    @PostMapping(path = "/inventory")
    public Car addVehicle(@RequestBody Car car) {
        dealerDao.addVehicle(car);
        return car;
    }

    @PutMapping(path = "/inventory")
    public Car buyVehicle(@RequestBody Car car, Principal principal) {
        return dealerDao.purchaseVehicle(car, userDao.findIdByUsername(principal.getName()));
    }

    @PutMapping(path = "/inventory/update")
    public Car updateVehicle(@RequestBody Car car) {
        return dealerDao.updateCar(car);
    }

    @GetMapping(path = "/inventory/{vin}")
    public Car getCarByVin(@PathVariable String vin) {
        return dealerDao.getCarByVin(vin);
    }
    
    @GetMapping(path = "/customers")
    public List<User> displayCustomers() {
        return userDao.findCustomers();
    }


    @GetMapping(path = "/customers/{id}")
    public List<Car> displayUserCars (@PathVariable int id){
        return garageDao.getAllCarsByUserId(id);}
}
