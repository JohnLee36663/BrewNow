-- drop database if exists brewNow ;  
--  drop user if exists 'ApplicationPresident';
--  drop user if exists 'Customer';
--  drop user if exists 'BreweryManager';
--  drop user if exists 'DistributorManager';
--  drop user if exists 'Driver';

use brewNow;


SET SQL_SAFE_UPDATES=0;

CREATE TABLE Person(
   personID INT PRIMARY KEY,
   lastName VARCHAR(20),
   firstName VARCHAR(20),
   zipCode INT
   );
   
   CREATE TABLE Customer(
   customerID INT PRIMARY KEY,
   customerStreet VARCHAR(30),
   customerPhone CHAR(12),
   FOREIGN KEY (customerID) REFERENCES Person(personID)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );
   
 CREATE TABLE Distributor(
   distributorID INT PRIMARY KEY,
   distributorName VARCHAR(40),
   distributorState VARCHAR(30),
   distributorManager INT
   );
   
   CREATE TABLE Driver(
   DriverID INT PRIMARY KEY,
   distributorID INT,
   driverRating DECIMAL(5,2),
   FOREIGN KEY (driverID) REFERENCES Person(personID)
   ON DELETE RESTRICT ON UPDATE CASCADE,
   FOREIGN KEY (distributorID) REFERENCES Distributor(distributorID)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );
   
 
   
   CREATE TABLE Sample(
   sampleID INT PRIMARY KEY,
   sampleName VARCHAR(20),
   breweryID INT,
   sampleType VARCHAR(20),
   samplePrice INT,
   FOREIGN KEY (breweryID) REFERENCES Brewery(breweryID)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );
   
   CREATE TABLE Vehicle(
   vehicleID INT PRIMARY KEY,
   driverID INT,
   vehicleType VARCHAR(20),
   FOREIGN KEY (driverID) REFERENCES Driver(driverID)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );
   
   
CREATE TABLE purchase(
   driverID INT,
   customerID INT,
   sampleID INT,
   deliveryDate DATE,
   deliveryTime INT,
   PRIMARY KEY (driverID, customerID, sampleID,deliveryDate),
   FOREIGN KEY (driverID) REFERENCES Driver(driverID)
   ON DELETE RESTRICT ON UPDATE CASCADE,
   FOREIGN KEY (customerID) REFERENCES Customer(customerID)
   ON DELETE RESTRICT ON UPDATE CASCADE,
   FOREIGN KEY (sampleID) REFERENCES Sample(sampleID)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );
   
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (1,'Smith','John',98053);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (2,'Howard','James',98039);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (3,'Lewis','Robert',98053);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (4,'Jones','Emma',98033);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (5,'Morris','Jacob',98055);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (6,'Green','Charlotte',97105);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (7,'Murphy','Sophia',97105);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (8,'Perry','Abigail',97003);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (9,'Taylor','John',97056);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (10,'Wilson','Benjamin',97190);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (11,'Miller','Harper',75055);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (12,'Powell','Isabella',75055);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (13,'Barnes','Mason',75690);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (14,'Brown','Ethan',75988);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (15,'Moore','Elijah',76700);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (16,'Sanchez','Benjamin',10997);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (17,'Young','Mia',10997);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (18,'Wood','Liam',10897);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (19,'Williams','Michael',11545);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (20,'Allen','Ava',11560);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (21,'Cook','Olivia',98053);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (22,'Smith','John',98053);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (23,'Hernandez','Alexander',98039);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (24,'King','Madison',98033);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (25,'Reed','Jayden',98055);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (26,'Ross','Aiden',97105);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (27,'Wright','Chloe',97105);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (28,'Lopez','Anthony',97003);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (29,'Adams','Abigail',97056);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (30,'Rivera','George',97190);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (31,'Long','Lily',75055);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (32,'Patterson','Elizabeth',75055);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (33,'Thomas','Addison',75690);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (34,'Murphy','Caden',75988);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (35,'Anderson','Logan',76700);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (36,'Scott','Hailey',10997);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (37,'Brown','Sara',10997);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (38,'Coleman','Matthew',11545);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (39,'Jenkins','Hannah',11560);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (40,'Jackson','Sarah',10897);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (41,'Jones','Alana',98053);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (42,'Matthews','Cain',98039);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (43,'Lynch','Albert',10997);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (44,'James','Desean',10997);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (45,'Turner','Wilson',11545);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (46,'Patrick','Watson',11560);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (47,'Hawthorne','Serena',76700);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (48,'Nelson','Abigail',75690);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (49,'Paris','Helena',97105);
INSERT INTO Person( personID,lastName,firstName,zipCode ) VALUES (50,'Lewis','Gavin',97105);

INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (21,'123 Zoo St.','425-516-4495');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (22,'234 Alpha Way','425-789-6579');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (23,'456 Olive NW','314-567-9089');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (24,'789 Elise PL','567-678-9908');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (25,'123 Elf St.','980-567-6607');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (26,'234 Bravo Way','314-890-6780');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (27,'456 Adams SE','450-670-7780');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (28,'789 Ruth PL','445-060-4456');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (29,'123 Bronze St.','112-213-4454');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (30,'456 Cali SW','678-999-8214');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (31,'789 Ann PL','878-787-0000');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (32,'123 Onyx St.','454-664-4454');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (33,'456 Tree NW','112-990-9999');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (34,'789 Elise PL','656-555-8900');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (35,'123 Gold St.','880-967-6660');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (36,'234 East Way','599-980-1333');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (37,'456 Count NW','611-906-0040');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (38,'789 Omega PL','765-900-8777');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (39,'123 Beaver St.','425-344-1134');
INSERT INTO Customer( customerID,customerStreet,customerPhone ) VALUES (40,'234 Lion Way','678-452-2213');



INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (123,'Parker Pressley','washington',1);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (124,'Gardenhouse','washington',2);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (125,'Belvea','washington',3);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (126,'Ender','washington',4);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (127,'Elysia','washington',5);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (128,'Bounty Heights','oregon',6);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (129,'Camden House','oregon',7);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (130,'DeepRoot','oregon',8);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (131,'Alinew','oregon',9);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (132,'Greatworks','oregon',10);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (133,'Sounder','texas',11);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (134,'Hander','texas',12);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (135,'Geneses','texas',13);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (136,'Handle Neutral','texas',14);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (137,'Elite','texas',15);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (138,'OmegaPositive','new-york',16);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (139,'Tap North','new-york',17);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (140,'Bowl Garden','new-york',18);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (141,'Leather Hall','new-york',19);
INSERT INTO Distributor( distributorID,distributorName,distributorState,distributorManager ) VALUES (142,'Hen House','new-york',20);

INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (1,123,4.4);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (2,124,4.1);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (3,125,4.6);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (4,126,3.9);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (5,127,4.9);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (6,128,4.3);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (7,129,4.4);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (8,130,4.0);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (9,131,4.4);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (10,132,3.5);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (11,133,4.2);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (12,134,4.0);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (13,135,4.4);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (14,136,4.1);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (15,137,4.1);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (16,138,4.3);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (17,139,2.9);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (18,140,3.2);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (19,141,4.8);
INSERT INTO Driver( driverID,distributorID,driverRating ) VALUES (20,142,4.4);

INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (1,355,'Mountain Mixture','IPA Heavy',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (2,360,'Rainier Delight','IPA Heavy',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (3,370,'Snoqualmie Heaven','IPA Heavy',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (4,380,'Seahawk Sunrise','Light Select',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (5,390,'Puget Combo','Light Select',25);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (6,400,'Redmond Select','Light Select',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (7,410,'Belltown Flavors','Mixed Medley',20);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (8,180,'Duck Delight','Mixed Medley',20);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (9,190,'Canon Beast','Mixed Medley',15);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (10,200,'Lewis Trail','Mixed Medley',10);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (11,210,'Baker Mixture','Ale Assortment',10);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (12,220,'Portlandia Special','Ale Assortment',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (13,230,'Northwest Group','Ale Assortment',45);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (14,235,'Eugene Colors','Lager Choice',40);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (15,300,'Lone Star Lagers','Lager Choice',10);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (16,305,'Dallas Delight','Lager Choice',20);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (17,310,'Houston Lagers','Lager Choice',20);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (18,315,'Rio Grande Taste','Lager Choice',15);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (19,320,'River Choice','Lager Choice',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (20,325,'Austin Alphas','IPA Heavy',35);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (21,330,'Horseback Mix','IPA Heavy',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (22,335,'Southern Taste','Light Select',25);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (23,20,'Northern Delight','Light Select',20);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (24,25,'New York Mix','Light Select',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (25,30,'Empire Variety','Mixed Medley',20);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (26,35,'Hudson Helper','Mixed Medley',15);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (27,40,'Liberty Lagers','Lager Choice',10);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (28,45,'Bright Light Lagers','Lager Choice',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (29,50,'Urban Deluxe','IPA Heavy',30);
INSERT INTO Sample( sampleID,breweryID,sampleName,sampleType,samplePrice ) VALUES (30,60,'Northern Lights','IPA Heavy',30);


INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (1,1,'Hybrid');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (2,1,'Sedan');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (3,1,'Sedan');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (4,2,'Compact');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (5,2,'SUV');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (6,3,'Sedan');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (7,3,'Hybrid');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (8,4,'Truck');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (9,4,'Sedan');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (10,5,'Hybrid');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (11,5,'Crossover');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (12,6,'Truck');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (13,7,'Hybrid');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (14,8,'Sedan');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (15,9,'Crossover');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (16,10,'Hybrid');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (17,11,'Sedan');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (18,12,'Truck');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (19,13,'Truck');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (20,14,'Sedan');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (21,15,'Hybrid');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (22,16,'Crossover');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (23,17,'Crossover');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (24,18,'Hybrid');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (25,19,'Truck');
INSERT INTO Vehicle( vehicleID,driverID,vehicleType ) VALUES (26,20,'Sedan');

INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (1,21,1,'2019-09-01',30);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (2,22,2,'2019-09-01',34);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (3,23,3,'2019-09-01',31);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (6,26,8,'2019-10-02',35);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (7,27,9,'2019-09-02',33);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (6,27,8,'2019-11-02',30);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (11,31,15,'2019-10-01',35);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (12,33,15,'2019-10-01',40);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (11,32,16,'2019-08-19',22);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (16,36,24,'2019-11-04',31);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (17,34,23,'2019-11-20',40);
INSERT INTO purchase( driverID,customerID,sampleID,deliveryDate,deliveryTime ) VALUES (18,37,24,'2019-11-22',39);



CREATE USER 'ApplicationPresident' IDENTIFIED BY 'ApplicationPresident3663!';
CREATE USER 'BreweryManager' IDENTIFIED BY 'BreweryManager3663!';
CREATE USER 'DistributorManager' IDENTIFIED BY 'DistributorManager3663!';
CREATE USER 'Driver' IDENTIFIED BY 'Driver3663!';
CREATE USER 'Customer' IDENTIFIED BY 'Customer3663!';


DELIMITER $$
CREATE PROCEDURE ViewCustomerInformation()
BEGIN
select*from Customer;
END $$



DELIMITER $$
CREATE PROCEDURE InputCustomerInformation(p_id int, p_street varchar(30), p_phone char(12))
BEGIN
insert into Customer(customerID,customerStreet,customerPhone) values (p_id,p_street,p_phone);
END $$


DELIMITER $$
CREATE PROCEDURE ViewDistributorInformation()
BEGIN
select*from Distributor;
END $$

DELIMITER $$
CREATE PROCEDURE InputDistributorInformation(p_id int, p_name varchar(40), p_state varchar(30), p_manager int)
BEGIN
insert into Distributor(distributorID,distributorName,distributorState,distributorManager) values (p_id,p_name,p_state,p_manager);
END $$

DELIMITER $$
CREATE PROCEDURE ViewBreweryInformation()
BEGIN
select*from Brewery;
END $$

DELIMITER $$
CREATE PROCEDURE InputBreweryInformation(p_id int, p_manager int, p_name varchar(100), p_type varchar(20), p_web varchar(200), p_state varchar(30))
BEGIN
insert into Brewery(breweryID,breweryManager,breweryName,breweryType,website,breweryState) values (p_id,p_manager,p_name,p_type,p_web,p_state);
END $$

DELIMITER $$
CREATE PROCEDURE ViewDriverInformation()
BEGIN
select*from Driver;
END $$

DELIMITER $$
CREATE PROCEDURE InputDriverInformation(p_id int, p_distributor int, p_rating decimal)
BEGIN
insert into Driver(driverID,distributorID,driverRating) values (p_id,p_distributor,p_rating);
END $$

DELIMITER $$
CREATE PROCEDURE ViewSampleInformation()
BEGIN
select*from Sample;
END $$

DELIMITER $$
CREATE PROCEDURE InputSampleInformation(p_id int, p_brewery int, p_name varchar(20),p_type varchar(20),p_price int)
BEGIN
insert into Sample(sampleID,breweryID,sampleName,sampleType,samplePrice) values (p_id,p_brewery,p_name,p_type,p_price);
END $$

DELIMITER $$
CREATE PROCEDURE ViewVehicleInformation()
BEGIN
select*from Vehicle;
END $$

DELIMITER $$
CREATE PROCEDURE InputVehicleInformation(p_id int, p_driver int, p_type char(20))
BEGIN
insert into Vehicle(vehicleID,driverID,vehicleType) values (p_id,p_driver,p_type);
END $$

DELIMITER $$
CREATE PROCEDURE ViewAverageVehicleTypeDeliveryTime(p_type varchar(20))
BEGIN
select vehicleType as "Type", avg(deliveryTime) as "Delivery Time" from (Vehicle join Driver on Vehicle.driverID = Driver.driverID)
join purchase on Driver.driverID = purchase.driverID where vehicleType = p_type ;
END $$



DELIMITER $$
CREATE PROCEDURE ViewSampleTypeSales(p_type varchar(20))
BEGIN
select sampleType as "Type", count(purchase.sampleID) as "Number of Sales" from Sample 
join purchase on Sample.sampleID = purchase.sampleID where p_type = sampleType ;
END $$

DELIMITER $$
CREATE PROCEDURE ViewAverageDriverDeliveryTime(p_id int)
BEGIN
select Driver.driverID as "Driver", avg(deliveryTime) as "Delivery Time" from 
Driver join purchase on Driver.driverID = purchase.driverID where Driver.driverID = p_id ;
END $$



DELIMITER $$
CREATE PROCEDURE ViewAvailableDrivers(p_id int)
BEGIN
select driverID as "Available Drivers" from Person join Driver on personID = driverID where zipCode = (select zipCode from 
Person where personID = p_id) and driverID;
END $$



DELIMITER $$
CREATE PROCEDURE ViewBreweryRevenue(p_id int)
BEGIN
select Brewery.breweryID as "Brewery",sum(samplePrice) as "Revenue" 
from (Brewery join Sample on Brewery.breweryID = Sample.breweryID)
join purchase on Sample.sampleID = purchase.sampleID where Brewery.breweryID = p_id ;
END $$



DELIMITER $$
CREATE PROCEDURE MakePurchase(p_customer int, p_driver int, p_sample int,p_date date,p_time int)
BEGIN
insert into purchase(customerID,driverID,sampleID,deliveryDate,deliveryTime) values (p_customer,p_driver,p_sample,p_date,p_time);
END $$

DELIMITER ;
GRANT EXECUTE ON PROCEDURE ViewCustomerInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE InputCustomerInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE ViewDistributorInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE InputDistributorInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE ViewBreweryInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE InputBreweryInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE ViewDriverInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE InputDriverInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE ViewBreweryInformation TO 'ApplicationPresident';
GRANT EXECUTE ON PROCEDURE ViewBreweryRevenue TO 'ApplicationPresident';

GRANT EXECUTE ON PROCEDURE InputCustomerInformation TO 'Customer';
GRANT EXECUTE ON PROCEDURE ViewAvailableDrivers TO 'Customer';
GRANT EXECUTE ON PROCEDURE MakePurchase TO 'Customer';
GRANT EXECUTE ON PROCEDURE ViewSampleInformation TO 'Customer';

GRANT EXECUTE ON PROCEDURE InputDistributorInformation TO 'DistributorManager';
GRANT EXECUTE ON PROCEDURE ViewDriverInformation TO 'DistributorManager';
GRANT EXECUTE ON PROCEDURE ViewVehicleInformation TO 'DistributorManager';
GRANT EXECUTE ON PROCEDURE ViewAverageVehicleTypeDeliveryTime TO 'DistributorManager';
GRANT EXECUTE ON PROCEDURE ViewAverageDriverDeliveryTime TO 'DistributorManager';

GRANT EXECUTE ON PROCEDURE InputBreweryInformation TO 'BreweryManager';
GRANT EXECUTE ON PROCEDURE ViewSampleInformation TO 'BreweryManager';
GRANT EXECUTE ON PROCEDURE InputSampleInformation TO 'BreweryManager';
GRANT EXECUTE ON PROCEDURE ViewSampleTypeSales TO 'BreweryManager';

GRANT EXECUTE ON PROCEDURE InputDriverInformation TO 'Driver';
GRANT EXECUTE ON PROCEDURE InputVehicleInformation TO 'Driver';




