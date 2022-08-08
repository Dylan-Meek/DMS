package com.techelevator.controller;

import com.techelevator.dao.DealerDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Car;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class DealerController {

    private DealerDao dealerDao;
    private UserDao userDao;

    public DealerController(DealerDao dealerDao, UserDao userDao){
        this.dealerDao = dealerDao;
        this.userDao = userDao;
    }

    @GetMapping(path="/inventory")
    public List<Car> displayInventory(){
        //add authorization for dealer users here
        return dealerDao.getInventory();
    }
}
