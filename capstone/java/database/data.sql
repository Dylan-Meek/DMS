BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO car (vin, make, model, year, engine, price, photo)
VALUES ('1lk32451k4b', 'Nissan', 'Shitbox', 1969, 'V1', 4200, 'lajbdslkvajbsdv');

INSERT INTO car (vin, make, model, year, engine, price, photo)
VALUES ('l1kj3b2l4hkr5b', 'Honda', 'Civic', 2000, 'V6', 3500, 'lajsnvdliasb');

INSERT INTO car (vin, make, model, year, engine, price, photo)
VALUES ('li1jb4i2tyb3rf', 'Chevy', 'Truck', 2005, 'V8', 6900, 'liuqbwlejdbc');

COMMIT TRANSACTION;
