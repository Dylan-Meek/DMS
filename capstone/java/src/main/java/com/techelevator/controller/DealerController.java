package com.techelevator.controller;

import com.techelevator.dao.DealerDao;
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

    public DealerController(DealerDao dealerDao, UserDao userDao) {
        this.dealerDao = dealerDao;
        this.userDao = userDao;
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
}
