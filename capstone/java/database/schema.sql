BEGIN TRANSACTION;

DROP TABLE IF EXISTS users, car, garage, inputs;

DROP SEQUENCE IF EXISTS seq_garage_id;

CREATE TABLE users (
	user_id SERIAL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar (200) NOT NULL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE inputs (
	input_id int NOT NULL,
	input_name varchar(20) NOT NULL,
	CONSTRAINT PK_inputs PRIMARY KEY (input_id)
);

CREATE TABLE car (
	vin varchar(50) NOT NULL UNIQUE,
	make varchar(50) NOT NULL,
	model varchar(50) NOT NULL,
	year int NOT NULL,
	mileage int NOT NULL,
	engine	varchar(50) NOT NULL,
	input_id int NOT NULL,
	price decimal (13,2) NOT NULL,
	photo varchar(2000) NOT NULL,
	notes varchar(500) NOT NULL,
	is_for_sale boolean NOT NULL DEFAULT true,
	CONSTRAINT PK_car PRIMARY KEY (vin),
	CONSTRAINT FK_input_id FOREIGN KEY (input_id) REFERENCES inputs (input_id)
);

CREATE TABLE garage (
	vin varchar(50) NOT NULL,
	user_id int NOT NULL,
	CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users (user_id),
	CONSTRAINT FK_vin FOREIGN KEY (vin) REFERENCES car (vin),
	CONSTRAINT PK_garage PRIMARY KEY (user_id, vin)
);


COMMIT;


