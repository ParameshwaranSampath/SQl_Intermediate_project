-- Creates database. To manage KDS brickkiln business related data.
CREATE DATABASE KDS_Brickkiln;

-- give the notification to MySQL, which database will be used.
USE KDS_Brickkiln;

-- Craete tables
-- Employees personal details will be stored in Emp_details table.
CREATE TABLE emp_details 
(
       s_no INT UNIQUE NOT NULL,
	   eid VARCHAR(255) PRIMARY KEY,
	   en VARCHAR(255) NOT NULL,
       gen VARCHAR(255) NOT NULL,
       con_no LONG NOT NULL,
       dt DATE NOT NULL,
       address VARCHAR(255) NOT NULL,
       title VARCHAR(255) NOT NULL
);

-- Table description of Emp_Details.
DESC emp_details;

-- Brick manufacturing workers work details will be stored in Brick_Worker table.
CREATE TABLE brick_worker
(
       s_no INT UNIQUE NOT NULL,
	   eid VARCHAR(5),
       bn VARCHAR(255) NOT NULL,
	   Dt DATE NOT NULL,
       no_of_line INT NOT NULL,
       no_of_bricks_aline INT NOT NULL,
       single_brick_price FLOAT NOT NULL,
       tot_bricks INT NOT NULL,
       amt DOUBLE NOT NULL,
	   FOREIGN KEY(eid) REFERENCES emp_details(eid)
);

-- Table description of Brick_worker.
DESC brick_worker;

-- Load workers work details will be stored in Load_worker table
CREATE TABLE load_worker
(
       s_no INT UNIQUE NOT NULL,
	   eid VARCHAR(5),
       ln VARCHAR(255) NOT NULL,
	   dt DATE NOT NULL,
       no_of_load INT NOT NULL,
	   amt INT NOT NULL,
	   FOREIGN KEY(eid) REFERENCES emp_details(eid)
);

-- Table description of Load_worker.
DESC load_worker;

-- Divers work details will be stored in Driver table.
CREATE TABLE driver
(
	   sno INT UNIQUE NOT NULL, 
       eid VARCHAR(5),
       dn  VARCHAR(255) NOT NULL,
       dt DATE NOT NULL,
       hr INT NOT NULL,
       amt_per_hour FLOAT NOT NULL,
       amt FLOAT NOT NULL,
	   FOREIGN KEY (eid) REFERENCES emp_details(eid)
);

-- Table description of Driver.
DESC driver;

-- The final bricks quantity will be stored to sale in Brick_qty table
 CREATE TABLE brick_qty
 (
	   s_no INT AUTO_INCREMENT PRIMARY KEY,
       dt date not null,
       qty long not null
 );
 
 -- Table description of brick_qty.
 DESC brick_qty;

-- Customer basic details wil be stored in cust_Details table.
 CREATE TABLE cust_details
 (
       s_no INT UNIQUE NOT NULL,
       cid VARCHAR(5) PRIMARY KEY,
       cn VARCHAR(255) NOT NULL,
       cust_con_no LONG NOT NULL,
       cadd VARCHAR(255) NOT NULL
 );
 
 -- Table description of Cust_Details.
DESC cust_details;

-- Customer buying details will be stored in cust_buy_details.
CREATE TABLE cust_buy_details
(
       s_no INT UNIQUE NOT NULL,
       cid VARCHAR(5),
       dt DATE NOT NULL,
       tot_bricks INT NOT NULL,
       single_brick_price FLOAT NOT NULL,
       tot_amt DOUBLE NOT NULL,
       paid_mode VARCHAR(255) NOT NULL,
       FOREIGN KEY(cid) REFERENCES cust_details(cid)
);

-- Table description of cust_buy_Details.
DESC cust_buy_details;

-- Employees details are storing in Emp_Details table.
INSERT INTO emp_details(s_no, eid, en, gen, con_no, dt, address, title) VALUES
		(1,"BW01","Kumar","Male",9875487875,"1998-5-12","Madavalam, tiruppattur", "Brick worker"),
		(2,"BW02","sumathi","Female",9875477875,"2005-8-24","Madapalli,tiruppattur", "Brick worker"),
		(3,"BW03","Santhi","female",9975487875,"2010-12-24","Madavalam,tiruppattur", "Brick worker"),
		(4,"LW01","Ravikumar","Male",9875787875,"1999-5-5","Madavalam,tiruppattur", "Load worker"),
		(5,"LW02","Ramesh","Male",9875487775,"1999-5-28","Madavalam,tiruppattur", "Load worker"),
		(6,"LW03","Kumar","Male",9874487875,"2012-6-8","Madapalli,tiruppattur", "Load worker"),
		(7,"LW04","Perumal","Male",9875487877,"1998-8-19","Ambedkar nagar,tiruppattur", "Load worker"),
		(8,"LW05","Santhosh","Male",9975487875,"2007-9-12","Madavalam,tiruppattur", "Load worker"),
		(9,"LW06","Raj","Male",9875887875,"2020-5-26","Ambedkar nagar,tiruppattur", "Load worker"),
		(10,"DW01","Elumalai","Male",8875487875,"1996-01-12","Madavalam,tiruppattur", "Driver"),
		(11,"DW02","Kumaran","Male",9875487866,"1999-5-29","Madavalam,tiruppattur", "Driver");
        
-- Brick manufactruing workers work details are storing in Brick_worker table.        
INSERT INTO brick_worker (s_no, eid, bn, dt, no_of_line,no_of_bricks_aline,single_brick_price,tot_bricks, amt) VALUES 
		(1,"BW01","Kumar","2024-12-01",45,30,1,1350,1350),
		(2,"BW02","Sumathi","2024-12-01",30,30,1,1350,1350),
		(3,"BW03","Santhi","2024-12-01",45,31,1,1395,1395),
		(4,"BW01","Kumar","2024-12-02",40,30,1,1350,1350),
		(5,"BW02","Sumathi","2024-12-02",45,28,1,1260,1260),
		(6,"BW03","santhi","2024-12-02",33,30,1,990,990),
		(7,"BW01","Kumar","2024-12-03",45,25,1,1125,1125),
		(8,"BW02","Sumathi","2024-12-03",45,30,1,1350,1350),
		(9,"BW03","santhi","2024-12-03",45,30,1,1350,1350),
		(10,"BW01","Kumar","2024-12-04",34,30,1,1020,1020),
		(11,"BW02","Sumathi","2024-12-04",45,20,1,900,900),
		(12,"BW03","Santhi","2024-12-04",30,30,1,900,900),
		(13,"BW01","Kumar","2024-12-05",35,30,1,1050,1050),
		(14,"BW02","Sumathi","2024-12-05",45,30,1,1350,1350),
		(15,"BW03","Santhi","2024-12-05",45,27,1,1215,1215),
		(16,"BW01","Kumar","2024-12-06",25,30,1,750,750),
		(17,"BW02","Sumathi","2024-12-06",45,30,1,1350,1350),
		(18,"BW03","Santhi","2024-12-06",25,30,1,750,750),
		(19,"BW01","Kumar","2024-12-07",45,38,1,1710,1710),
		(20,"BW02","Sumathi","2024-12-07",25,30,1,750,750),
		(21,"BW03","Santhi","2024-12-07",45,20,1,900,900),
		(22,"BW01","Kumar","2024-12-08",28,30,1,840,840),
		(23,"BW02","Sumathi","2024-12-08",45,35,1,1575,1575),
		(24,"BW03","Santhi","2024-12-08",20,30,1,600,600),
		(25,"BW01","Kumar","2024-12-10",45,30,1,1350,1350),
		(26,"BW02","Sumathi","2024-12-10",25,30,1,750,750),
		(27,"BW03","Santhi","2024-12-10",15,50,1,750,750),
		(28,"BW01","Kumar","2024-12-11",20,30,1,600,600),
		(29,"BW02","Sumathi","2024-12-11",45,10,1,450,450),
		(30,"BW03","Santhi","2024-12-11",15,30,1,450,450),
		(31,"BW01","Kumar","2024-12-12",45,30,1,1350,1350),
		(32,"BW02","Sumathi","2024-12-12",30,30,1,900,900),
		(33,"BW03","Santhi","2024-12-12",45,30,1,1350,1350),
		(34,"BW01","Kumar","2024-12-13",45,30,1,1350,1350),
		(35,"BW02","Sumathi","2024-12-13",25,30,1,750,750),
		(36,"BW03","Santhi","2024-12-13",30,30,1,900,900),
		(37,"BW01","Kumar","2024-12-14",25,30,1,750,750),
		(38,"BW02","Sumathi","2024-12-14",45,30,1,1350,1350),
		(39,"BW03","Santhi","2024-12-14",15,30,1,450,450),
		(40,"BW01","Kumar","2024-12-17",35,30,1,1050,1050),
		(42,"BW02","Sumathi","2024-12-17",45,30,1,1350,1350),
		(43,"BW03","Santhi","2024-12-17",25,30,1,750,750),
		(44,"BW01","Kumar","2024-12-18",45,30,1,1350,1350),
		(45,"BW02","Sumathi","2024-12-18",25,30,1,750,750),
		(46,"BW03","Santhi","2024-12-18",15,30,1,450,450),
		(47,"BW01","Kumar","2024-12-19",45,30,1,1350,1350),
		(48,"BW02","Sumathi","2024-12-19",15,30,1,450,450),
		(49,"BW03","Santhi","2024-12-19",25,30,1,750,750),
		(50,"BW01","Kumar","2024-12-20",45,30,1,1350,1350),
		(51,"BW02","Sumathi","2024-12-20",15,30,1,450,450),
		(52,"BW03","Santhi","2024-12-20",45,15,1,675,675),
		(53,"BW01","Kumar","2024-12-23",45,30,1,1350,1350),
		(54,"BW02","Sumathi","2024-12-23",45,25,1,1125,1125),
		(55,"BW03","Santhi","2024-12-23",25,30,1,750,750),
		(56,"BW01","Kumar","2024-12-24",45,30,1,1350,1350),
		(57,"BW02","Sumathi","2024-12-24",25,30,1,750,750),
		(58,"BW03","Santhi","2024-12-24",15,20,1,300,300),
		(59,"BW01","Kumar","2024-12-25",45,30,1,1350,1350),
		(60,"BW02","Sumathi","2024-12-25",35,30,1,1050,1050),
		(61,"BW03","Santhi","2024-12-25",25,30,1,750,750),
		(62,"BW01","Kumar","2024-12-26",45,30,1,1350,1350),
		(63,"BW02","Sumathi","2024-12-26",25,30,1,750,750),
		(64,"BW03","Santhi","2024-12-26",45,20,1,900,900),
		(65,"BW01","Kumar","2024-12-27",45,30,1,1350,1350),
		(66,"BW02","Sumathi","2024-12-27",15,30,1,450,450),
		(67,"BW03","Santhi","2024-12-27",25,30,1,750,750),
		(68,"BW01","Kumar","2024-12-28",25,30,1,750,750),
		(69,"BW02","Sumathi","2024-12-28",45,10,1,450,450),
		(70,"BW03","Santhi","2024-12-28",45,30,1,1350,1350),
		(71,"BW01","Kumar","2024-12-29",25,30,1,750,750),
		(72,"BW02","Sumathi","2024-12-29",45,30,1,1350,1350),
		(73,"BW03","Santhi","2024-12-29",35,30,1,1050,1050),
		(74,"BW01","Kumar","2024-12-30",45,30,1,1350,1350),
		(75,"BW02","Sumathi","2024-12-30",15,30,1,450,450),
		(76,"BW03","Santhi","2024-12-30",45,20,1,900,900),
		(77,"BW01","Kumar","2024-12-31",25,30,1,750,750),
		(78,"BW02","Sumathi","2024-12-31",45,30,1,1350,1350),
		(79,"BW03","Santhi","2024-12-31",25,30,1,750,750);
        
-- Load workers work details are storing in Load_Worker table.
INSERT INTO load_worker(sno,eid,ln,dt,no_of_load,amt) VALUES
		(1,"LW01","Ravikumar","2024-12-01",6,500),
		(2,"LW02","Ramesh","2024-12-01",6,500),
		(3,"LW03","Kumar","2024-12-01",6,500),
		(4,"LW04","Perumal","2024-12-01",6,500),
		(5,"LW05","Santhosh","2024-12-01",6,500),
		(6,"LW06","Raj","2024-12-01",6,500),
		(7,"LW01","Ravikumar","2024-12-02",6,500),
		(8,"LW02","Ramesh","2024-12-02",6,500),
		(9,"LW03","Kumar","2024-12-02",6,500),
		(10,"LW04","Perumal","2024-12-02",6,500),
		(11,"LW05","Santhosh","2024-12-02",6,500),
		(12,"LW06","Raj","2024-12-02",6,500),
		(13,"LW01","Ravikumar","2024-12-03",6,500),
		(14,"LW02","Ramesh","2024-12-03",6,500),
		(15,"LW03","Kumar","2024-12-03",6,500),
		(16,"LW04","Perumal","2024-12-03",6,500),
		(17,"LW05","Santhosh","2024-12-03",6,500),
		(18,"LW06","Raj","2024-12-03",6,500),
		(19,"LW01","Ravikumar","2024-12-04",6,500),
		(20,"LW02","Ramesh","2024-12-04",6,500),
		(21,"LW03","Kumar","2024-12-04",6,500),
		(22,"LW04","Perumal","2024-12-04",6,500),
		(23,"LW05","Santhosh","2024-12-04",6,500),
		(24,"LW06","Raj","2024-12-04",6,500),
		(25,"LW01","Ravikumar","2024-12-05",6,500),
		(26,"LW02","Ramesh","2024-12-05",6,500),
		(27,"LW03","Kumar","2024-12-05",6,500),
		(28,"LW04","Perumal","2024-12-05",6,500),
		(29,"LW05","Santhosh","2024-12-05",6,500),
		(30,"LW06","Raj","2024-12-05",6,500),
		(31,"LW01","Ravikumar","2024-12-06",6,500),
		(32,"LW02","Ramesh","2024-12-06",6,500),
		(33,"LW03","Kumar","2024-12-06",6,500),
		(34,"LW04","Perumal","2024-12-06",6,500),
		(35,"LW05","Santhosh","2024-12-06",6,500),
		(36,"LW06","Raj","2024-12-06",6,500),
		(37,"LW01","Ravikumar","2024-12-07",6,500),
		(38,"LW02","Ramesh","2024-12-07",6,500),
		(39,"LW03","Kumar","2024-12-07",6,500),
		(40,"LW04","Perumal","2024-12-07",6,500),
		(41,"LW05","Santhosh","2024-12-07",6,500),
		(42,"LW06","Raj","2024-12-07",6,500),
		(43,"LW02","Ramesh","2024-12-08",5,500),
		(44,"LW03","Kumar","2024-12-08",5,500),
		(45,"LW04","Perumal","2024-12-08",5,500),
		(46,"LW05","Santhosh","2024-12-08",5,500),
		(47,"LW06","Raj","2024-12-08",5,500),
		(48,"LW01","Ravikumar","2024-12-09",7,583),
		(49,"LW02","Ramesh","2024-12-09",7,583),
		(50,"LW03","Kumar","2024-12-09",7,583),
		(51,"LW04","Perumal","2024-12-09",7,583),
		(52,"LW05","Santhosh","2024-12-09",7,583),
		(53,"LW06","Raj","2024-12-09",7,583),
		(54,"LW01","Ravikumar","2024-12-11",6,500),
		(55,"LW02","Ramesh","2024-12-11",6,500),
		(56,"LW03","Kumar","2024-12-11",6,500),
		(57,"LW04","Perumal","2024-12-11",6,500),
		(58,"LW05","Santhosh","2024-12-11",6,500),
		(59,"LW06","Raj","2024-12-11",6,500),
		(60,"LW01","Ravikumar","2024-12-12",6,750),
		(61,"LW02","Ramesh","2024-12-12",6,750),
		(62,"LW03","Kumar","2024-12-12",6,750),
		(63,"LW06","Raj","2024-12-12",6,750),
		(64,"LW01","Ravikumar","2024-12-14",6,500),
		(65,"LW02","Ramesh","2024-12-14",6,500),
		(66,"LW03","Kumar","2024-12-14",6,500),
		(67,"LW04","Perumal","2024-12-14",6,500),
		(68,"LW05","Santhosh","2024-12-14",6,500),
		(69,"LW06","Raj","2024-12-14",6,500),
		(70,"LW01","Ravikumar","2024-12-15",6,500),
		(71,"LW02","Ramesh","2024-12-15",6,500),
		(72,"LW03","Kumar","2024-12-15",6,500),
		(73,"LW04","Perumal","2024-12-15",6,500),
		(74,"LW05","Santhosh","2024-12-15",6,500),
		(75,"LW06","Raj","2024-12-15",6,500),
		(76,"LW01","Ravikumar","2024-12-15",6,500),
		(77,"LW02","Ramesh","2024-12-16",6,500),
		(78,"LW03","Kumar","2024-12-16",6,500),
		(79,"LW04","Perumal","2024-12-16",6,500),
		(80,"LW05","Santhosh","2024-12-16",6,500),
		(81,"LW06","Raj","2024-12-16",6,500),
		(82,"LW01","Ravikumar","2024-12-16",6,500),
		(83,"LW02","Ramesh","2024-12-17",6,500),
		(84,"LW03","Kumar","2024-12-17",6,500),
		(85,"LW04","Perumal","2024-12-17",6,500),
		(86,"LW05","Santhosh","2024-12-17",6,500),
		(87,"LW06","Raj","2024-12-17",6,500),
		(88,"LW01","Ravikumar","2024-12-18",6,500),
		(89,"LW02","Ramesh","2024-12-18",6,500),
		(90,"LW03","Kumar","2024-12-18",6,500),
		(91,"LW04","Perumal","2024-12-18",6,500),
		(92,"LW05","Santhosh","2024-12-18",6,500),
		(93,"LW06","Raj","2024-12-18",6,500),
		(94,"LW01","Ravikumar","2024-12-19",6,500),
		(95,"LW02","Ramesh","2024-12-19",6,500),
		(96,"LW03","Kumar","2024-12-19",6,500),
		(97,"LW04","Perumal","2024-12-19",6,500),
		(98,"LW05","Santhosh","2024-12-19",6,500),
		(99,"LW06","Raj","2024-12-19",6,500),
		(100,"LW01","Ravikumar","2024-12-20",6,500),
		(101,"LW02","Ramesh","2024-12-20",6,500),
		(102,"LW03","Kumar","2024-12-20",6,500),
		(103,"LW04","Perumal","2024-12-20",6,500),
		(104,"LW05","Santhosh","2024-12-20",6,500),
		(105,"LW06","Raj","2024-12-20",6,500),
		(106,"LW01","Ravikumar","2024-12-211",6,500),
		(107,"LW02","Ramesh","2024-12-21",6,500),
		(108,"LW03","Kumar","2024-12-21",6,500),
		(109,"LW04","Perumal","2024-12-21",6,500),
		(110,"LW05","Santhosh","2024-12-21",6,500),
		(111,"LW06","Raj","2024-12-24",6,500),
		(112,"LW01","Ravikumar","2024-12-24",6,500),
		(113,"LW02","Ramesh","2024-12-24",6,500),
		(114,"LW03","Kumar","2024-12-24",6,500),
		(115,"LW04","Perumal","2024-12-24",6,500),
		(116,"LW05","Santhosh","2024-12-24",6,500),
		(117,"LW06","Raj","2024-12-24",6,500),
		(118,"LW01","Ravikumar","2024-12-25",6,500),
		(119,"LW02","Ramesh","2024-12-25",6,500),
		(120,"LW03","Kumar","2024-12-25",6,500),
		(121,"LW04","Perumal","2024-12-25",6,500),
		(122,"LW05","Santhosh","2024-12-25",6,500),
		(123,"LW06","Raj","2024-12-25",6,500),
		(124,"LW01","Ravikumar","2024-12-26",6,500),
		(125,"LW02","Ramesh","2024-12-26",6,500),
		(126,"LW03","Kumar","2024-12-26",6,500),
		(127,"LW04","Perumal","2024-12-26",6,500),
		(128,"LW05","Santhosh","2024-12-26",6,500),
		(129,"LW06","Raj","2024-12-26",6,500),
		(130,"LW01","Ravikumar","2024-12-27",6,500),
		(131,"LW02","Ramesh","2024-12-27",6,500),
		(132,"LW03","Kumar","2024-12-27",6,500),
		(133,"LW04","Perumal","2024-12-27",6,500),
		(134,"LW05","Santhosh","2024-12-27",6,500),
		(135,"LW06","Raj","2024-12-27",6,500),
		(136,"LW01","Ravikumar","2024-12-29",6,500),
		(137,"LW02","Ramesh","2024-12-29",6,500),
		(138,"LW03","Kumar","2024-12-29",6,500),
		(139,"LW04","Perumal","2024-12-29",6,500),
		(140,"LW05","Santhosh","2024-12-29",6,500),
		(141,"LW06","Raj","2024-12-29",6,500),
		(142,"LW01","Ravikumar","2024-12-30",6,500),
		(143,"LW02","Ramesh","2024-12-30",6,500),
		(144,"LW03","Kumar","2024-12-30",6,500),
		(145,"LW04","Perumal","2024-12-30",6,500),
		(146,"LW05","Santhosh","2024-12-30",6,500),
		(147,"LW06","Raj","2024-12-30",6,500),
		(148,"LW01","Ravikumar","2024-12-31",12,1000),
		(149,"LW02","Ramesh","2024-12-31",12,1000),
		(150,"LW03","Kumar","2024-12-31",12,1000),
		(151,"LW04","Perumal","2024-12-31",12,1000),
		(152,"LW05","Santhosh","2024-12-31",12,1000),
		(153,"LW06","Raj","2024-12-31",12,1000);
        
-- Drivers work details are storing in Driver table.
INSERT INTO driver(sno, eid, dn, dt, hr, amt_per_hour, amt) VALUES
		(1,"DW01","Elumalai","2024-12-01",8,75,600),
		(2,"DW02","Kumaran","2024-12-01",8,75,600),
		(3,"DW01","Elumalai","2024-12-02",8,75,600),
		(4,"DW02","Kumaran","2024-12-02",8,75,600),
		(5,"DW01","Elumalai","2024-12-03",8,75,600),
		(6,"DW02","Kumaran","2024-12-03",8,75,600),
		(7,"DW01","Elumalai","2024-12-04",8,75,600),
		(8,"DW02","Kumaran","2024-12-04",8,75,600),
		(9,"DW01","Elumalai","2024-12-05",8,75,600),
		(10,"DW02","Kumaran","2024-12-05",8,75,600),
		(11,"DW01","Elumalai","2024-12-06",8,75,600),
		(12,"DW02","Kumaran","2024-12-06",8,75,600),
		(13,"DW01","Elumalai","2024-12-07",8,75,600),
		(14,"DW02","Kumaran","2024-12-07",8,75,600),
		(15,"DW01","Elumalai","2024-12-08",8,75,600),
		(16,"DW02","Kumaran","2024-12-08",8,75,600),
		(17,"DW01","Elumalai","2024-12-09",8,75,600),
		(18,"DW02","Kumaran","2024-12-09",8,75,600),
		(19,"DW01","Elumalai","2024-12-10",8,75,600),
		(20,"DW02","Kumaran","2024-12-10",8,75,600),
		(21,"DW01","Elumalai","2024-12-11",8,75,600),
		(22,"DW02","Kumaran","2024-12-11",8,75,600),
		(23,"DW01","Elumalai","2024-12-12",8,75,600),
		(24,"DW02","Kumaran","2024-12-12",8,75,600),
		(25,"DW01","Elumalai","2024-12-13",8,75,600),
		(26,"DW02","Kumaran","2024-12-13",8,75,600),
		(27,"DW01","Elumalai","2024-12-14",8,75,600),
		(28,"DW02","Kumaran","2024-12-14",8,75,600),
		(29,"DW01","Elumalai","2024-12-15",8,75,600),
		(30,"DW02","Kumaran","2024-12-15",8,75,600),
		(31,"DW01","Elumalai","2024-12-16",8,75,600),
		(32,"DW02","Kumaran","2024-12-16",8,75,600),
		(33,"DW01","Elumalai","2024-12-17",8,75,600),
		(34,"DW02","Kumaran","2024-12-17",8,75,600),
		(35,"DW01","Elumalai","2024-12-18",8,75,600),
		(36,"DW02","Kumaran","2024-12-18",8,75,600),
		(37,"DW01","Elumalai","2024-12-19",8,75,600),
		(38,"DW02","Kumaran","2024-12-19",8,75,600),
		(39,"DW01","Elumalai","2024-12-20",8,75,600),
		(40,"DW02","Kumaran","2024-12-20",8,75,600),
		(41,"DW01","Elumalai","2024-12-21",8,75,600),
		(42,"DW02","Kumaran","2024-12-21",8,75,600),
		(43,"DW01","Elumalai","2024-12-22",8,75,600),
		(44,"DW02","Kumaran","2024-12-22",8,75,600),
		(45,"DW01","Elumalai","2024-12-23",8,75,600),
		(46,"DW02","Kumaran","2024-12-23",8,75,600),
		(47,"DW01","Elumalai","2024-12-24",8,75,600),
		(48,"DW02","Kumaran","2024-12-24",8,75,600),
		(49,"DW01","Elumalai","2024-12-25",8,75,600),
		(50,"DW02","Kumaran","2024-12-25",8,75,600),
		(51,"DW01","Elumalai","2024-12-26",8,75,600),
		(52,"DW02","Kumaran","2024-12-26",8,75,600),
		(53,"DW01","Elumalai","2024-12-27",8,75,600),
		(54,"DW02","Kumaran","2024-12-27",8,75,600),
		(55,"DW01","Elumalai","2024-12-28",8,75,600),
		(56,"DW02","Kumaran","2024-12-28",8,75,600),
		(57,"DW01","Elumalai","2024-12-29",8,75,600),
		(58,"DW02","Kumaran","2024-12-29",8,75,600),
		(59,"DW01","Elumalai","2024-12-30",8,75,600),
		(60,"DW02","Kumaran","2024-12-30",8,75,600),
		(61,"DW01","Elumalai","2024-12-31",8,75,600),
		(62,"DW02","Kumaran","2024-12-31",8,75,600);
        
-- The final brick Quantity value is storing in brick_qty table.
INSERT INTO brick_qty (dt,qty) VALUES
        ("2024-12-02",28000);       
       
-- Customer details are storing in cust_details table.
INSERT INTO cust_details(s_no,cid,cn,cust_con_no,cadd) VALUES
		(1,"CU01","Arun", "9875481254", "Alangayam"),
		(2,"CU02","Ram", "9876481254", "Alangayam"),
		(3,"CU03","Ravi", "9875481288", "Tiruppathur"),
		(4,"CU04","Karun", "9875499254", "Vaniyambadi"),
		(5,"CU05","Kumar", "7775481254", "Ranipettai"),
		(6,"CU06","Arunkumar", "9875851254", "Ranipettai"),
		(7,"CU07","Ambikaha", "9775481254", "Alangayam"),
		(8,"CU08","Gukan", "98754812584", "Tiruppathur"),
		(9,"CU09","Dhanam", "9899981254", "Tiruppattur"),
		(10,"CU10","Rejesh", "9875485254", "Alangayam");
        
-- Customer buying details are storing in cust_buy_details.        
INSERT INTO cust_buy_details (s_no, cid, dt, tot_bricks, single_brick_price, tot_amt, paid_mode) VALUES
		(1,"CU01","2024-12-4",3000,10,30000,"Online"),
		(2,"CU02","2024-12-7",10000,10,100000,"Cash"),
		(3,"CU03","2024-12-7",2000,10,20000,"Online"),
		(4,"CU05","2024-12-9",5000,10,50000,"Online"),
		(5,"CU01","2024-12-12",1000,10,10000,"Cash"),
		(6,"CU04","2024-12-18",500,10,5000,"Cash"),
		(7,"CU06","2024-12-18",1000,10,10000,"Online"),
		(8,"CU07","2024-12-19",100,10,1000,"Online"),
		(9,"CU08","2024-12-22",300,10,3000,"Online");
        
-- Fetch all columns from Emp_details table.
SELECT 
	   s_no as S_NO,
        eid as Emp_ID,
        en as Emp_Name,
        gen as Gender,
        con_no as Contact_No,
        dt as _DATE,
        address as Address,
        title as Title
FROM 
		emp_details;

-- Fetch all columns from Brick_worker table.
SELECT 
	   s_no as S_NO,
        eid as Emp_ID,
        bn as BW_Name,
        dt as _DATE,
        No_Of_Line,
        No_of_bricks_aline,
        Single_brick_price,
        Tot_bricks,
        Amt
FROM
		brick_worker
LIMIT 10;

-- Fetch all columns from Load_worker table.
SELECT 
	   S_NO,
        eid as Emp_ID,
        ln as LW_Name,
        dt as _DATE,
        No_of_Load,
        Amt
FROM
		load_worker
LIMIT 10;

-- Fetch all columns from Driver table.
SELECT 
	   sno as S_NO,
        eid as Emp_ID,
        dn as DW_Name,
        dt as _DATE,
        hr as Hours,
        Amt_per_Hour,
        Amt
FROM
		driver
LIMIT 10;

-- Fetch all columns from Brick_qty table.
SELECT 
		S_NO,
        dt as _DATE,
        qty as QTY
FROM 
		brick_qty;

-- Fetch all columns from Cust_details.
SELECT 
		S_NO,
        cid as Cust_ID,
        cn as Cust_Name,
        Cust_con_No,
        cadd as Cust_Address
FROM
		cust_details;

-- Fetch all columns from cust_buy_details table.
SELECT 
	   S_NO,
        cid as cust_ID,
        dt as _DATE,
        Tot_Bricks,
        Single_Brick_Price,
        Tot_Amt,
        Paid_Mode
FROM
		cust_buy_details;

-- Emp_details Table.
-- Fiter the employees details based on working category wise.

-- Filter the details who are working in brick making category.
SELECT 
		S_NO,
        eid as Emp_ID,
        en as Emp_Name,
        con_no as Contact_Number,
        Address,
        Title
FROM
		emp_details
WHERE 
		title = "Brick worker";

-- Filter the details who are working in Load worker category.
SELECT 
		S_NO,
        eid as Emp_ID,
        en as Emp_Name,
        con_no as Contact_Number,
        Address,
        Title
FROM
		emp_details
WHERE 
		title = "Load worker";

-- Fliter details who are working in Driver category.
SELECT 
		S_NO,
        eid as Emp_ID,
        en as Emp_Name,
        con_no as Contact_Number,
        Address,
        Title
FROM
		emp_details
WHERE 
		title = "Driver";

-- Count total number of working employees. 
SELECT
		count(eid) as No_of_Workers
FROM
		emp_details;

-- Count total number of working employees in gender basis.
SELECT
		gen as Gender,
        count(eid) as No_of_Workers
FROM
		emp_details
GROUP BY gen;

-- Count total number of working employees in gender basis for each and every category.
SELECT
		title as Title,
		gen as Gender,
        count(eid) as No_of_Workers
FROM
		emp_details
GROUP BY gen, title;

-- Filter the employees details who has joined after 2000.
SELECT 
	   S_NO,
        eid as Emp_ID,
        en as Emp_Name,
        con_no as Contact_Number,
        Address,
        Title,
        dt as _DATE
FROM 
		emp_details
WHERE
		dt > "1999-12-31";

-- Count total number of employees who has joined after 2000.
SELECT
		title as Title,
        count(eid) as No_of_Workers
FROM
		emp_details
WHERE
		dt > "1999-12-31"
GROUP BY title;

-- Filter the employees details who has joined before 2000.
SELECT 
		S_NO,
        eid as Emp_ID,
        en as Emp_Name,
        con_no as Contact_Number,
        Address,
        Title,
		dt as _DATE
FROM 
		emp_details
WHERE
		dt < "1999-12-31";

-- Count total number of employees who has joined before 2000.
SELECT
		title as Title,
        count(eid) as No_of_Workers
FROM
		emp_details
WHERE
		dt < "1999-12-31"
GROUP BY title;

-- Calculate total number of working year of all employees.
SELECT 
      S_NO,
      eid as Emp_ID,
      en as Emp_Name,
      timestampdiff(year,dt,curdate()) as No_of_years_working
FROM
      emp_Details
ORDER BY 
	   No_of_years_working DESC;

-- Brick_worker table
-- Fliter the brick making worker details in Employee ID basis.

-- Filter work details of BW01.
SELECT 
		S_NO,
        eid as Emp_ID,
        bn as BW_Name,
        dt as _DATE,
        No_of_Line,
        no_of_Bricks_aline,
        Single_brick_Price,
        Tot_Bricks,
        Amt
FROM
		brick_worker
WHERE
		eid = "BW01"
LIMIT 10;

-- Filter work details of BW02.
SELECT 
		S_NO,
        eid as Emp_ID,
        bn as BW_Name,
        dt as _DATE,
        No_of_Line,
        no_of_Bricks_aline,
        Single_brick_Price,
        Tot_Bricks,
        Amt
FROM
		brick_worker
WHERE
		eid = "BW02"
LIMIT 10;

-- Filter work details of BW03.
SELECT 
		S_NO,
        eid as Emp_ID,
        bn as BW_Name,
        dt as _DATE,
        No_of_Line,
        no_of_Bricks_aline,
        Single_brick_Price,
        Tot_Bricks,
        Amt
FROM
		brick_worker
WHERE
		eid = "BW03"
LIMIT 10;

-- calculate number of working days of each employees in a month.
SELECT 
		eid as Emp_ID,
        bn as Emp_Name,
        count(dt) as No_of_Working_Days
FROM
		brick_worker
GROUP BY
		eid,bn;

-- Fliter the worker details who made 1000 or more than 1000 bricks in a day.
SELECT 
		eid as Emp_ID,
        bn as Emp_Name,
        dt as _DATE,
        Tot_Bricks
FROM
		Brick_worker
WHERE
		tot_bricks >= 1000
LIMIT 10;

-- Fliter the worker details who made less than 1000 or more than 500 bricks in a day.
SELECT 
		eid as Emp_ID,
        bn as Emp_Name,
        dt as _DATE,
        Tot_Bricks
FROM
		Brick_worker
WHERE
		tot_bricks < 1000 AND tot_bricks >= 500
LIMIT 10;

-- Fliter the worker details who made less than 500 bricks in a day.
SELECT 
		eid as Emp_ID,
        bn as Emp_Name,
        dt as _DATE,
        Tot_Bricks
FROM
		Brick_worker
WHERE
		tot_bricks < 500
LIMIT 10;

-- Calculate the worker overall work in a month with number of working days also. How many bricks they made. How much amount they got.
SELECT 
		eid as Emp_ID,
        bn as BW_Name,
        sum(amt) as TOT_AMT,
        count(dt) as Working_days
FROM
		brick_worker
GROUP BY 
		eid,bn
ORDER BY 
		TOT_AMT DESC;

-- Load Worker table --
-- Fliter the Load worker details in Employee ID basis.

-- Filter work details of LW01.
SELECT 
		S_NO,
        eid as Emp_ID,
        ln as LW_Name,
        dt as _DATE,
        No_of_load,
        Amt
FROM
		load_Worker
WHERE 
		eid = "LW01"
LIMIT 10;

-- Filter work details of LW02.
SELECT 
		S_NO,
        eid as Emp_ID,
        ln as LW_Name,
        dt as _DATE,
        No_of_load,
        Amt
FROM
		load_Worker
WHERE 
		eid = "LW02"
LIMIT 10;

-- Filter work details of LW03.
SELECT 
		S_NO,
        eid as Emp_ID,
        ln as LW_Name,
        dt as _DATE,
        No_of_load,
        Amt
FROM
		load_Worker
WHERE 
		eid = "LW03"
LIMIT 10;

-- Filter work details of LW04.
SELECT 
		S_NO,
        eid as Emp_ID,
        ln as LW_Name,
        dt as _DATE,
        No_of_load,
        Amt
FROM
		load_Worker
WHERE 
		eid = "LW04"
LIMIT 10;

-- Filter work details of LW05.
SELECT 
		S_NO,
        eid as Emp_ID,
        ln as LW_Name,
        dt as _DATE,
        No_of_load,
        Amt
FROM
		load_Worker
WHERE 
		eid = "LW05"
LIMIT 10;

-- Filter work details of LW06.
SELECT 
		S_NO,
        eid as Emp_ID,
        ln as LW_Name,
        dt as _DATE,
        No_of_load,
        Amt
FROM
		load_Worker
WHERE 
		eid = "LW06"
LIMIT 10;

-- calculate number of working days of each employees in a month.
SELECT 
		eid as EMp_ID,
        ln as LW_Name,
        count(dt) as Working_days
FROM
		load_worker
GROUP BY
		eid,ln;

-- This process is, to find the employees details who hasn't come to work on specified day.
-- Step 1
-- Count number of working employees on each and every day.
SELECT 
		dt as _DATE,
        count(dt) as Working_days
FROM
		load_worker
GROUP BY
		dt
LIMIT 10;

-- By that count, can be found which day there were less worker. 
-- Filter on that day employees details. By this result we can find who hasn't come.
SELECT 
		eid as Emp_Name,
        ln as LW_Name
FROM
		load_worker
WHERE 
		dt = "2024-12-08";

  -- Calculate the worker overall work in a month with number of working days also. How much amount they got.      
SELECT 
		eid as Emp_ID,
        ln as LW_Name,
        sum(amt) as TOT_AMT,
        count(dt) as Working_days
FROM
		load_worker
GROUP BY 
		eid,ln
ORDER BY
		TOT_AMT;

-- Driver table --
-- Fliter the Driver details in Employee ID basis.

-- Filter work details of DW01.
SELECT
		Sno as S_NO,
        eid as Emp_ID,
        dn as DW_Name,
        dt as _DATE,
        hr as Hrs,
        Amt_Per_Hour,
        Amt as TOT_Amt
FROM
		driver
WHERE 
		eid = "DW01"
LIMIT 10;

-- Filter work details of DW01.
SELECT
		Sno as S_NO,
        eid as Emp_ID,
        dn as DW_Name,
        dt as _DATE,
        hr as Hrs,
        Amt_Per_Hour,
        Amt as TOT_Amt
FROM
		driver
WHERE 
		eid = "DW02"
LIMIT 10;

-- calculate number of working days of each employees in a month.
SELECT
		eid as Emp_ID,
        dn as DW_Name,
        count(dt) as Working_days
FROM
		driver
GROUP BY
		eid,dn;
        
 -- Calculate the worker overall work in a month with number of working days also.How many hours they worked. How much amount they got. 	
SELECT 
		eid as Emp_ID,
        dn as DW_Name,
        sum(amt) as TOT_AMT,
        count(dt) as Working_days
FROM
		driver
GROUP BY
		eid,dn
ORDER BY
		TOT_AMT DESC;

-- cust_Details table--

-- Count total number of customers
SELECT
		count(cid) as No_of_workers
FROM
		cust_details;
        
-- Cust_buy_details table --

-- fliter the customer bought details with their personal details.
SELECT 
		t2.cid as Cust_ID,
        t1.cn as Cust_Name,
		t1.cust_con_no as Contact_Number,
        t2.dt as _Date,
        t2.Tot_bricks,
        t2.Single_brick_price,
        t2.Tot_Amt,
        t2.Paid_Mode
FROM
		cust_details t1 JOIN cust_buy_details t2
ON 
		t1.cid = t2.cid
ORDER BY
		t2.cid
LIMIT 10;

-- Count the customers how many times bought bricks with their contact number.
SELECT 
		t2.cid as Cust_ID,
        t1.cn as Cust_Name,
		t1.cust_con_no as Contact_Number,
        Count(t2.cid) as No_of_Bought
FROM
		cust_details t1 JOIN cust_buy_details t2
ON 
		t1.cid = t2.cid
GROUP BY 
		t2.cid
ORDER BY
		t2.cid;

-- Filter the maximum value of sold bricks qty
SELECT 
		max(tot_bricks)
FROM
		cust_buy_Details;

-- Fetch the customer details, who bought maximum bricks qty.      
SELECT 
		t2.cid as Cust_ID,
        t1.cn as Cust_Name,
		t1.cust_con_no as Contact_Number,
        t2.dt as _Date,
        t2.Tot_bricks,
        t2.Single_brick_price,
        t2.Tot_Amt,
        t2.Paid_Mode
FROM
		cust_details t1 JOIN cust_buy_details t2
ON 
		t1.cid = t2.cid
WHERE
		tot_bricks = 45000;

-- Filter the minimum value of sold bricks qty
SELECT 
		min(tot_bricks)
FROM
		cust_buy_Details;
      
-- Fetch the customer details, who bought minimum bricks qty. 
SELECT 
		t2.cid as Cust_ID,
        t1.cn as Cust_Name,
		t1.cust_con_no as Contact_Number,
        t2.dt as _Date,
        t2.Tot_bricks,
        t2.Single_brick_price,
        t2.Tot_Amt,
        t2.Paid_Mode
FROM
		cust_details t1 JOIN cust_buy_details t2
ON 
		t1.cid = t2.cid
WHERE
		tot_bricks = 100;

-- Fliter the payment mode details with number of payment has been done on each mode and total amount value.    
SELECT 
		Paid_Mode,
        count(paid_mode) as No_of_done,
        sum(tot_amt) as TOT_AMT
FROM
		cust_buy_Details
GROUP BY
		paid_mode;

-- Fliter the customer details in single brick price basis. Along with how many orders have been done on each prices.
SELECT 
		Single_brick_price,
        count(cid) as no_of_cust_bought
FROM
		cust_buy_Details
GROUP BY
		single_brick_price;

-- Fliter customer details who bought highest price of single brick.
SELECT 
		t2.cid as Cust_ID,
        t1.cn as Cust_Name,
		t1.cust_con_no as Contact_Number,
        t2.dt as _Date,
        t2.Tot_bricks,
        t2.Single_brick_price,
        t2.Tot_Amt,
        t2.Paid_Mode
FROM
		cust_details t1 JOIN cust_buy_details t2
ON 
		t1.cid = t2.cid
WHERE
		single_brick_price = 12;

-- Fliter customer details who bought lowest price of single brick.
SELECT 
		t2.cid as Cust_ID,
        t1.cn as Cust_Name,
		t1.cust_con_no as Contact_Number,
        t2.dt as _Date,
        t2.Tot_bricks,
        t2.Single_brick_price,
        t2.Tot_Amt,
        t2.Paid_Mode
FROM
		cust_details t1 JOIN cust_buy_details t2
ON 
		t1.cid = t2.cid
WHERE
		single_brick_price = 10;

-- Calculate total sold out bricks value as well as Total amount for those bricks.
SELECT 
		sum(tot_bricks) as Tot_Bricks,
        sum(tot_amt) as Tot_Amount
FROM
		cust_buy_Details;

-- Fetch each and every worker necessary details of work in a single table.
SELECT 
		eid as Emp_ID,
        bn as Emp_Name,
        tot_bricks as Brick_Load_Hr,
        amt as Amount
FROM
		Brick_worker

UNION ALL

SELECT 
		eid as Emp_ID,
        ln as Emp_Name,
        No_of_load as Brick_Load_Hr,
        amt as Amount
FROM
		Load_worker
        
UNION ALL     

SELECT 
		eid as Emp_ID,
        dn as Emp_Name,
        hr as Brick_Load_Hr,
        amt as Amount
FROM
		driver;

-- Calculate to spent amount for each and every category workers.
SELECT 
        sum(amt) as Brick_Load_Driver
FROM
		Brick_worker

UNION ALL

SELECT 
        sum(amt) as Brick_Load_Driver
FROM
		Load_worker
        
UNION ALL     

SELECT 
        sum(amt) as Brick_Load_Driver
FROM
		driver;

-- Calculate the overall spent amount for all categories.
SELECT 
		sum(Brick_load_Driver) as Tot_Spent_Amt
FROM
		(SELECT 
				sum(amt) as Brick_Load_Driver
		FROM
				Brick_worker

		UNION ALL

		SELECT 
				sum(amt) as Brick_Load_Driver
		FROM
				Load_worker
				
		UNION ALL     

		SELECT 
				sum(amt) as Brick_Load_Driver
		FROM
				driver) as Overall;
                
-- The procees is, to calculate the loss brick along with loss amount for those bricks.

-- Step 1.
-- Get the needs month final bricks qty value from brick_qty table.
SELECT
		dt as _DATE,
        qty as QTY
FROM
		Brick_qty;

-- Step 2.
-- Calaulate procees,
		-- Loss brick qty : sum of all made bricks qty - final bricks qty for sale.
        -- Loss amount : loss brick qty * 10
SELECT
		70000 as Final_Qty,
        sum(tot_bricks) as Made_Qty,
        sum(tot_bricks) - 70000 as Loss_Qty,
        (sum(tot_bricks) - 70000) * 10 as Loss_Amt
FROM
		brick_worker;

-- This process is, to calculate the rest of bricks qty for sale.

-- Step1,
-- get the final bricks qty value from brick_qty table.alter

-- Step2,
-- Calcualate process,
		-- Rest of bricks qty : final bricks qty for sale - sold out bricks qty value.
SELECT 
		70000 as Final_Qty,
        sum(tot_bricks) as Sold_Out_Qty,
        70000-sum(tot_bricks) as Rest_of_Qty
FROM
		cust_buy_details;

-- This process is, to calculate profit or loss.

-- Calculate process,
		-- Profit or loss : Sum of total amount. which they got from sold out the bricks. -  (Total spent amount for workers + The loss brick amount).
        -- If the result is positive value that much is profit amount. IF the result is negative value that much is loss amount.
SELECT		
		70000 as Final_Qty,
        76980 as Made_Qty,
        76980-70000 as Loss_Qty,
        sum(tot_bricks) as Sold_Out_Qty,
        70000-sum(tot_bricks) as Rest_of_Qty,
        (76980-70000) * 10 as Loss_Amt,
        194178 as Overall_Spent_Amt,
        sum(tot_amt) as Sold_out_Amt,
        sum(tot_amt) - (194178 + ((76980-70000) * 10)) as Profit_Loss
FROM
		cust_buy_details;
