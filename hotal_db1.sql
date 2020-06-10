CREATE TABLE `invoices` (
  `id` int,
  `reservation_ID` int,
  `total-price` int,
  `surcharge` int,
  `invoice-date-time` datetime,
  `paid` varchar(30),
  PRIMARY KEY (`id`),
    FOREIGN KEY (`reservation_ID`)
    REFERENCES `login`.`reservation` (`reservation_ID`)
		
);

CREATE TABLE `customers` (
  `customer_ID` int,
  `firstname` varchar(30),
  `lastname` varchar(30),
  `address` varchar(30),
  `email` varchar(30),
  `gender` char(1),
  `phone` int(20),
  PRIMARY KEY (`customer_ID`)
);

CREATE TABLE `room` (
  `room_ID` int,
  `room-type` varchar(30),
  `original-price` int,
  `current-price` int,
  `sea-view` varchar(30),
  PRIMARY KEY (`room_ID`)
);

CREATE TABLE `reservation` (
  `reservation_ID` int,
  `customer_ID` int,
  `room_ID` int,
  `check- n-date` datetime,
  `check-out-date` datetime,
  `room-price` int,
  PRIMARY KEY (`reservation_ID`),
   FOREIGN KEY (`customer_ID`)
    REFERENCES `login`.`customers` (`customer_ID`)
    ,

    FOREIGN KEY (`room_ID`)
    REFERENCES `login`.`room` (`room_ID`)
);