CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `airlineName` varchar(45) DEFAULT NULL,
  `flightId` int DEFAULT NULL,
  `airport` varchar(45) DEFAULT NULL,
  `bookingId` int DEFAULT NULL,
  `scheduled` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flightId_UNIQUE` (`flightId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `flight` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flightId` int DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `airlineName` varchar(45) DEFAULT NULL,
  `arr_airport` varchar(45) DEFAULT NULL,
  `arr_timezone` varchar(45) DEFAULT NULL,
  `arr_scheduled` varchar(45) DEFAULT NULL,
  `arr_estimated` varchar(45) DEFAULT NULL,
  `dep_airport` varchar(45) DEFAULT NULL,
  `dep_timezone` varchar(45) DEFAULT NULL,
  `dep_scheduled` varchar(45) DEFAULT NULL,
  `dep_estimated` varchar(45) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flightId_UNIQUE` (`flightId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `flight_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flightId` int DEFAULT NULL,
  `bookingId` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flightId_UNIQUE` (`flightId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

