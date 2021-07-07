CREATE SCHEMA flight;

CREATE TABLE flight.booking (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
 airlineName varchar(45) DEFAULT NULL,
 flightId int DEFAULT NULL,
 airport varchar(45) DEFAULT NULL,
 bookingId int DEFAULT NULL,
 scheduled varchar(45) DEFAULT NULL,
 PRIMARY KEY (id));

CREATE TABLE flight.flight (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
 flightId int DEFAULT NULL,
 price varchar(45) DEFAULT NULL,
 airlineName varchar(45) DEFAULT NULL,
 arr_airport varchar(45) DEFAULT NULL,
 arr_timezone varchar(45) DEFAULT NULL,
 arr_scheduled varchar(45) DEFAULT NULL,
 arr_estimated varchar(45) DEFAULT NULL,
 dep_airport varchar(45) DEFAULT NULL,
 dep_timezone varchar(45) DEFAULT NULL,
 dep_scheduled varchar(45) DEFAULT NULL,
 dep_estimated varchar(45) DEFAULT NULL,
 seats int DEFAULT NULL,
 PRIMARY KEY (id));


CREATE TABLE flight.flight_status (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
 flightId int DEFAULT NULL,
 bookingId int DEFAULT NULL,
 status varchar(45) DEFAULT NULL,
 PRIMARY KEY (id));

