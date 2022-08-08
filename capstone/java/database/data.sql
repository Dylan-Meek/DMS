BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO car (vin, make, model, year, engine, price, photo)
VALUES ('1lk32451k4b', 'Nissan', 'Shitbox', 1969, 'V1', 4200, 'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&w=1000&q=80');

INSERT INTO car (vin, make, model, year, engine, price, photo)
VALUES ('l1kj3b2l4hkr5b', 'Honda', 'Civic', 2000, 'V6', 3500, 'https://photos.app.goo.gl/osdyV8wgNtvV8ZNS8');

INSERT INTO car (vin, make, model, year, engine, price, photo)
VALUES ('li1jb4i2tyb3rf', 'Chevy', 'Truck', 2005, 'V8', 6900, 'https://photos.app.goo.gl/2SDJyFV8R4WkEs9E9');

COMMIT TRANSACTION;
