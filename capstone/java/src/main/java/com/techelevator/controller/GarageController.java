package com.techelevator.controller;

import com.techelevator.dao.DealerDao;
import com.techelevator.dao.GarageDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Car;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;

    @RestController
    @CrossOrigin
    public class GarageController {

        private GarageDao garageDao;
        private UserDao userDao;

        public GarageController(GarageDao garageDao, UserDao userDao){
            this.garageDao = garageDao;
            this.userDao = userDao;
        }

        @GetMapping(path="/garage/{username}")
        public List<Car> displayGarage(@PathVariable String username, Principal principal){
                return garageDao.getAllCarsByUserId(userDao.findIdByUsername(principal.getName()));
                
        }
    }
