USE retail_capstone_db;

INSERT INTO customers VALUES
(1,'Aastha Magdum','Pune','Maharashtra','Female','Gold'),
(2,'Sneha Kulkarni','Mumbai','Maharashtra','Female','Silver'),
(3,'Harleen Mehta','Hyderabad','Telangana','Male','Regular'),
(4,'Akansha Nair','Bengaluru','Karnataka','Female','Gold'),
(5,'Preeti Shah','Mumbai','Maharashtra','Male','Regular'),
(6,'Ananya Rao','Hyderabad','Telangana','Female','Silver'),
(7,'Vivek Sharma','Delhi','Delhi','Male','Gold'),
(8,'Neha Patil','Pune','Maharashtra','Female','Bronze'),
(9,'Farhana Khan','Lucknow','Uttar Pradesh','Male','Silver'),
(10,'Diya Iyer','Chennai','Tamil Nadu','Female','Gold'),
(11,'Sahil Deshmukh','Pune','Maharashtra','Male','Silver'),
(12,'Siya Kapoor','Mumbai','Maharashtra','Female','Regular');

INSERT INTO products VALUES
(101,'Bluetooth Earbuds','Electronics',1500),
(102,'Smart Watch','Electronics',2500),
(103,'Cotton T-Shirt','Fashion',700),
(104,'Running Shoes','Fashion',1999),
(105,'Coffee Maker','Home Appliances',3299),
(106,'Mixer Grinder','Home Appliances',2899),
(107,'Office Chair','Furniture',2999),
(108,'Study Table','Furniture',2995),
(109,'Lipstick','Beauty',599),
(110,'Foundation','Beauty',999),
(111,'Yoga Mat','Fitness',899),
(112,'Wall Clock','Home Decor',799);

INSERT INTO orders VALUES
(1001,1,'2026-01-02','Delivered'),
(1002,2,'2026-01-04','Delivered'),
(1003,3,'2026-01-05','Cancelled'),
(1004,4,'2026-01-07','Delivered'),
(1005,5,'2026-01-09','Pending'),
(1006,1,'2026-01-12','Delivered'),
(1007,6,'2026-02-15','Delivered'),
(1008,7,'2026-02-18','Pending'),
(1009,8,'2026-02-20','Delivered'),
(1010,9,'2026-02-22','Cancelled'),
(1011,10,'2026-02-25','Delivered'),
(1012,2,'2026-02-28','Delivered'),
(1013,4,'2026-03-02','Pending'),
(1014,7,'2026-03-04','Delivered'),
(1015,8,'2026-03-06','Delivered'),
(1016,11,'2026-04-08','Processing'),
(1017,5,'2026-05-11','Delivered');

INSERT INTO order_items VALUES
(1,1001,101,2),
(2,1001,103,1),
(3,1002,102,1),
(4,1002,109,2),
(5,1003,104,1),
(6,1004,105,1),
(7,1004,110,1),
(8,1005,106,1),
(9,1006,107,1),
(10,1006,101,1),
(11,1007,103,3),
(12,1008,108,1),
(13,1009,109,2),
(14,1009,110,2),
(15,1010,102,1),
(16,1011,105,1),
(17,1012,104,3),
(18,1012,103,2),
(19,1013,106,1),
(20,1014,101,2),
(21,1014,102,1),
(22,1015,109,1),
(23,1015,103,2),
(24,1016,101,1),
(25,1017,105,1);

INSERT INTO payments VALUES
(501,1001,'UPI','Success',3697),
(502,1002,'Credit Card','Success',3697),
(503,1003,'UPI','Failed',1999),
(504,1004,'Debit Card','Success',4598),
(505,1005,'Cash on Delivery','Pending',2899),
(506,1006,'UPI','Success',6998),
(507,1007,'Net Banking','Success',2097),
(508,1008,'Credit Card','Pending',6999),
(509,1009,'UPI','Success',2497),
(510,1010,'Debit Card','Failed',2499),
(511,1011,'UPI','Success',3299),
(512,1012,'Credit Card','Success',3397),
(513,1013,'Cash on Delivery','Pending',2899),
(514,1014,'UPI','Success',5497),
(515,1015,'Net Banking','Success',1997);


INSERT INTO deliveries VALUES
(701,1001,'Delhivery','Delivered','Pune'),
(702,1002,'Blue Dart','Delivered','Mumbai'),
(703,1003,'Ecom Express','Cancelled','Hyderabad'),
(704,1004,'Delhivery','Delivered','Bengaluru'),
(705,1005,'Shadowfax','Pending','Mumbai'),
(706,1006,'Blue Dart','Delivered','Pune'),
(707,1007,'Delhivery','Delivered','Hyderabad'),
(708,1008,'Ecom Express','Pending','Delhi'),
(709,1009,'Shadowfax','Delivered','Pune'),
(710,1010,'Blue Dart','Cancelled','Lucknow'),
(711,1011,'Delhivery','Delivered','Chennai'),
(712,1012,'Ecom Express','Delivered','Mumbai'),
(713,1013,'Shadowfax','Pending','Bengaluru'),
(714,1014,'Blue Dart','Delivered','Delhi'),
(715,1015,'Delhivery','Delivered','Pune');









