package com.techelevator.dao;

import com.techelevator.model.Car;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcGarageDao implements GarageDao{
private final JdbcTemplate jdbcTemplate;

    public JdbcGarageDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Car> getAllCarsByUserId(int userId) {
        List<Car> cars = new ArrayList<>();
        String sql = "SELECT c.vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale FROM car as c JOIN garage as g on g.vin = c.vin WHERE g.user_id = ?;";
        SqlRowSet RowSet = jdbcTemplate.queryForRowSet(sql, userId);
        while(RowSet.next()){
            cars.add(mapRowToCar(RowSet));
        }
        return cars;
    }

    private Car mapRowToCar(SqlRowSet carRowSet){
        Car car = new Car();
        car.setVin(carRowSet.getString("vin"));
        car.setMake(carRowSet.getString("make"));
        car.setModel(carRowSet.getString("model"));
        car.setEngine(carRowSet.getString("engine"));
        car.setPhoto(carRowSet.getString("photo"));
        car.setPhoto2(carRowSet.getString("photo_2"));
        car.setPhoto3(carRowSet.getString("photo_3"));
        car.setPhoto4(carRowSet.getString("photo_4"));
        car.setPrice(carRowSet.getDouble("price"));
        car.setYear(carRowSet.getInt("year"));
        car.setMileage(carRowSet.getInt("mileage"));
        car.setInputId(carRowSet.getInt("input_id"));
        car.setForSale(carRowSet.getBoolean("is_for_sale"));

        return car;
    }
}
