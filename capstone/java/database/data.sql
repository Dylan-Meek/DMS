BEGIN TRANSACTION;

INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('zack', 'Zack', 'Raney', 'zack@test.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('dealer', 'dealer', 'dealer', 'admin1@yahoo.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('carly', 'Carly', 'Trimboli', 'carly@test.com','$2a$10$dmIVOYNpMh49MoP5DWG37Oy2BlCBoYxgw1f9o06cLxJEwkz1qaR06','ROLE_USER');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('jeremy', 'Jeremy', 'Falk', 'jeremy@gmail.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('dylan', 'Dylan', 'Meek', 'dylan@google.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('mark', 'Mark', 'Baron', 'mark@test.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('mike', 'Mike', 'Levy', 'mike@google.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('brandy', 'Brandy', 'Brown', 'Brandy@yahoo.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');

INSERT INTO inputs (input_id, input_name)
VALUES (1, 'New');

INSERT INTO inputs (input_id, input_name)
VALUES (2, 'Used');

INSERT INTO inputs (input_id, input_name)
VALUES (3, 'Certified Pre-Owned');

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('1lk32451k4b', 'Nissan', 'Cursebox', 1969, 420000, 'V1', 2, 4200, 'https://i.insider.com/5637e2ba9dd7ccfc418bb91e?width=1300&format=jpeg&auto=webp', 'https://www.netcarshow.com/Dodge-Caravan-1984-1280-05.jpg', 'https://www.netcarshow.com/Dodge-Caravan-1984-1280-04.jpg','', false);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('firetruck', 'Chevy', 'Truck', 2005, 11, 'V8', 2, 6900, 'https://i.cbc.ca/1.5315974.1570713153!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/ransford-lockhart-truck-explosion.jpg', '','','', false);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin1zr', 'Jeep', 'Wrangler', 2021, 6000, '6-cyl', 3, 48900, 'https://img2.carmax.com/img/vehicles/22843221/4.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/22843221/3.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/22843221/6.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/22843221/10.jpg?width=1600&ratio=source', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin2zr', 'Jeep', 'Compass', 2022, 6, '4-cyl', 1, 38000,'https://img2.carmax.com/img/vehicles/23100082/1.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/23100082/3.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/23100082/6.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/23100082/10.jpg?width=1600&ratio=source', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin3zr', 'Jeep', 'Cherokee', 2022, 20, '6-cyl', 1, 45000, 'https://img2.carmax.com/img/vehicles/22843653/1.jpg?width=800&ratio=4/3', 'https://img2.carmax.com/img/vehicles/22843653/3.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/22843653/6.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/22843653/10.jpg?width=1600&ratio=source', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin4zr', 'Jeep', 'Gladiator', 2021, 63000, '6-cyl', 3, 52998, 'https://img2.carmax.com/img/vehicles/22957490/1.jpg?width=800&ratio=4/3', 'https://img2.carmax.com/img/vehicles/22957490/3.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/22957490/6.jpg?width=1600&ratio=16/9', 'https://img2.carmax.com/img/vehicles/22957490/10.jpg?width=1600&ratio=source', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin1dm', 'RAM', '1500 Bighorn', 2019, 42000, '8-cyl', 2, 46998, 
'https://img2.carmax.com/img/vehicles/22935120/4.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22935120/3.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22935120/2.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22935120/6.jpg?width=3200&ratio=16/9', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin2dm', 'RAM', '3500 Tradesman', 2020, 13000, '6-cyl', 2, 51998, 
'https://img2.carmax.com/img/vehicles/22084766/4.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22084766/3.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22084766/2.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22084766/6.jpg?width=3200&ratio=16/9', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin3dm', 'RAM', '1500 Laramie', 2020, 31000, '8-cyl', 2, 49998, 
'https://img2.carmax.com/img/vehicles/23100103/4.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/23100103/3.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/23100103/2.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/23100103/6.jpg?width=3200&ratio=16/9', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin4dm', 'RAM', '1500 Classic Warlock', 2021, 30000, '8-cyl', 2, 37998, 
'https://img2.carmax.com/img/vehicles/22841686/4.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22841686/3.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22841686/2.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22841686/6.jpg?width=3200&ratio=16/9', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin1rb', 'Dodge', 'Charger GT', 2018, 45000, '6-cyl', 3, 30998,
'https://img2.carmax.com/img/vehicles/22843406/4.jpg?width=3200&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22843406/7.jpg?width=1600&ratio=16/9',
'https://img2.carmax.com/img/vehicles/22843406/12.jpg?width=1600&ratio=source',
'https://img2.carmax.com/img/vehicles/22843406/21.jpg?width=1600&ratio=source', true);
INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin2rb', 'Dodge', 'Durango SXT Plus', 2020, 32000, '6-cyl', 3, 35998,
'https://img2.carmax.com/img/vehicles/22841363/1.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/22841363/7.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/22841363/8.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/22841363/10.jpg?width=800&ratio=source', true);
INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin3rb', 'Dodge', 'Challenger R/T', 2021, 6000, '8-cyl', 3, 55998,
'https://img2.carmax.com/img/vehicles/23101115/1.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/23101115/8.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/23101115/7.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/23101115/10.jpg?width=800&ratio=source', true);
INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('vin4rb', 'Dodge', 'Grand Caravan SXT', 2019, 41000, '6-cyl', 3, 27998,
'https://img2.carmax.com/img/vehicles/22965191/1.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/22965191/8.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/22965191/7.jpg?width=800&ratio=4/3',
'https://img2.carmax.com/img/vehicles/22965191/10.jpg?width=800&ratio=source', true);


INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('abcjb4i2tyb123', 'Ferrari', 'F430', 2003, 6000, 'V10', 2, 95000, 'https://www.ryanfriedmanmotorcars.com/imagetag/1290/23/l/Used-2003-Ferrari-360-Spider-1650764253.jpg', 'https://www.ryanfriedmanmotorcars.com/imagetag/1290/18/l/Used-2003-Ferrari-360-Spider-1650764253.jpg','https://www.ryanfriedmanmotorcars.com/imagetag/936/15/l/Used-2003-Ferrari-360-Spider-1615216607.jpg','https://www.ryanfriedmanmotorcars.com/imagetag/936/8/f/Used-2003-Ferrari-360-Spider-1615216607.jpg', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb444', 'Ferrari', 'F430', 2012, 5000, 'V12', 2, 120000, 'https://get.wallhere.com/photo/car-vehicle-sports-car-Ferrari-Ferrari-F430-performance-car-2012-netcarshow-netcar-car-images-car-photo-F430-by-Status-Design-supercar-land-vehicle-automotive-design-automobile-make-luxury-vehicle-ferrari-spa-ferrari-f430-challenge-ferrari-360-391666.jpg', '','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb777', 'Mercedes', 'GT R', 2021, 3000, 'V8', 2, 88000, 'https://cdn.carbuzz.com/gallery-images/1600/589000/400/589431.jpg', '','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb888', 'Mercedes', 'C63', 2010, 4000, 'V8', 2,60000, 'https://autotraderau-res.cloudinary.com/image/upload/t_gl/v1/glasses/DBTMKV0S.jpg', '','','', true);

Insert into garage (vin, user_id)
VALUES ('1lk32451k4b', 3);

Insert into garage (vin, user_id)
VALUES ('firetruck', 8);

COMMIT TRANSACTION;
