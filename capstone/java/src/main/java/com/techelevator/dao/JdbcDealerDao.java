package com.techelevator.dao;

import com.techelevator.model.Car;
import com.techelevator.model.User;
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

    @Override
    public boolean addVehicle(Car car){
        String sql = "INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, notes)" +
                " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        jdbcTemplate.update(sql, car.getVin(), car.getMake(), car.getModel(), car.getYear(), car.getMileage(), car.getEngine(), car.getInputId(), car.getPrice(),car.getPhoto(), car.getNotes());

        return true;
    }

    @Override
    public Car purchaseVehicle(Car car, int userId){
        String sql = "UPDATE car SET is_for_sale = ? WHERE vin = ?";
        jdbcTemplate.update(sql, false, car.getVin());

        String updateGarage = "INSERT INTO garage (vin, user_id)" +
                " VALUES (?, ?)";
        jdbcTemplate.update(updateGarage, car.getVin(), userId);

        String sqlUpdatedCar = "SELECT vin, make, model, year, mileage, engine, input_id, price, photo, notes, is_for_sale" +
                " FROM car WHERE vin = ?";
        Car updatedCar = new Car();
        SqlRowSet sqlRowSet = jdbcTemplate.queryForRowSet(sqlUpdatedCar, car.getVin());
        if(sqlRowSet.next()) {
            updatedCar = mapRowToCar(sqlRowSet);
        }
        return updatedCar;
    }

   public Car updateCar(Car car) {
       String sqlUpdateVehiclesAsDealer = "UPDATE car SET make = ?, model = ?, year = ?, mileage = ?, engine = ?, price = ?, photo = ?, input_id = ?" +
               " WHERE vin = ?";
             jdbcTemplate.update(sqlUpdateVehiclesAsDealer, car.getMake(), car.getModel(), car.getYear(), car.getMileage(), car.getEngine(), car.getPrice(), car.getPhoto(), car.getInputId(), car.getVin());
       String sqlUpdateCar = "SELECT vin, make, model, year, mileage, engine, input_id, price, photo, notes, is_for_sale" +
               " FROM car WHERE vin = ?";
       Car updateCar = new Car();
       SqlRowSet sqlRowSet = jdbcTemplate.queryForRowSet(sqlUpdateCar, car.getVin());
       if(sqlRowSet.next()) {
           updateCar = mapRowToCar(sqlRowSet);
       }
       return updateCar;
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
