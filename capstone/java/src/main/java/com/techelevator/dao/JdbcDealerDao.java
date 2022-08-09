package com.techelevator.dao;

import com.techelevator.model.Car;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcDealerDao implements DealerDao{

    private final JdbcTemplate jdbcTemplate;

    JdbcDealerDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Car> getInventory(){
        List<Car> inventory = new ArrayList<>();
        String sql = "SELECT vin, make, model, year, mileage, engine, input_id, price, photo, notes, is_for_sale" +
                " FROM car WHERE is_for_sale = ?;";
        SqlRowSet carRowSet = jdbcTemplate.queryForRowSet(sql, true);

        while(carRowSet.next()){
            inventory.add(mapRowToCar(carRowSet));
        }

        return inventory;
    }

    private Car mapRowToCar(SqlRowSet carRowSet){
        Car car = new Car();
        car.setVin(carRowSet.getString("vin"));
        car.setMake(carRowSet.getString("make"));
        car.setModel(carRowSet.getString("model"));
        car.setEngine(carRowSet.getString("engine"));
        car.setPhoto(carRowSet.getString("photo"));
        car.setPrice(carRowSet.getDouble("price"));
        car.setYear(carRowSet.getInt("year"));
        car.setMileage(carRowSet.getInt("mileage"));
        car.setInputId(carRowSet.getInt("input_id"));
        car.setNotes(carRowSet.getString("notes"));
        car.setForSale(carRowSet.getBoolean("is_for_sale"));

        return car;
    }
}
