BEGIN TRANSACTION;

INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('user', 'user1', 'user1', 'user1@test.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('admin', 'admin1', 'admin1', 'admin1@yahoo.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username, first_name, last_name, email, password_hash,role) VALUES ('carly', 'carly', 'trimboli', 'carly@test.com','$2a$10$dmIVOYNpMh49MoP5DWG37Oy2BlCBoYxgw1f9o06cLxJEwkz1qaR06','ROLE_USER');

INSERT INTO inputs (input_id, input_name)
VALUES (1, 'New');

INSERT INTO inputs (input_id, input_name)
VALUES (2, 'Used');

INSERT INTO inputs (input_id, input_name)
VALUES (3, 'Certified Pre-Owned');

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('1lk32451k4b', 'Nissan', 'Cursebox', 1969, 420000, 'V1', 2, 4200, 'https://i.insider.com/5637e2ba9dd7ccfc418bb91e?width=1300&format=jpeg&auto=webp', 'https://www.netcarshow.com/Dodge-Caravan-1984-1280-05.jpg', 'https://www.netcarshow.com/Dodge-Caravan-1984-1280-04.jpg','', false);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('l1kj3b2l4hkr5b', 'Honda', 'Civic', 2000, 169000, 'V3', 2, 3500, 'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80','','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb3rf', 'Chevy', 'Truck', 2005, 11, 'V8', 2, 6900, 'https://i.cbc.ca/1.5315974.1570713153!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/ransford-lockhart-truck-explosion.jpg', '','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb444', 'Ferrari', 'F430', 2012, 5000, 'V12', 2, 120000, 'https://get.wallhere.com/photo/car-vehicle-sports-car-Ferrari-Ferrari-F430-performance-car-2012-netcarshow-netcar-car-images-car-photo-F430-by-Status-Design-supercar-land-vehicle-automotive-design-automobile-make-luxury-vehicle-ferrari-spa-ferrari-f430-challenge-ferrari-360-391666.jpg', '','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb555', 'Kia', 'Carnival', 2022, 500, 'V6', 2, 44000, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/20201013_Kia_Carnival_Front_Side_%28cropped%29.jpg/1920px-20201013_Kia_Carnival_Front_Side_%28cropped%29.jpg', '','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb666', 'GMC', '', 1983, 120000, 'V8', 2, 26000, 'https://12pointsignworks.com/wp-content/uploads/2018/10/A-Team-Van-Mr-T.jpg','','','', true);

Insert into garage (vin, user_id)
VALUES ('1lk32451k4b', 3);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb777', 'Mercedes', 'GT R', 2021, 3000, 'V8', 2, 88000, 'https://cdn.carbuzz.com/gallery-images/1600/589000/400/589431.jpg', '','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb888', 'Mercedes', 'C63', 2010, 4000, 'V8', 2,60000, 'https://autotraderau-res.cloudinary.com/image/upload/t_gl/v1/glasses/DBTMKV0S.jpg', '','','', true);

INSERT INTO car (vin, make, model, year, mileage, engine, input_id, price, photo, photo_2, photo_3, photo_4, is_for_sale)
VALUES ('li1jb4i2tyb999', 'Chevrolet', 'Impala', 2018, 30000, 'V6', 2, 26000, 'https://di-uploads-development.dealerinspire.com/betleychevy-legacymigration0720/uploads/2020/07/2018ChevyImpala-1-1024x595.jpg', '','','', true);



COMMIT TRANSACTION;
