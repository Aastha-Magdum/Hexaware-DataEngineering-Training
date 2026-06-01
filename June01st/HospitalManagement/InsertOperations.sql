INSERT INTO patients VALUES
(1,'Aastha Magdum','Female',26,'Pune','9876543210'),
(2,'Sneha Kulkarni','Female',29,'Mumbai','9876543211'),
(3,'Harleen Mehta','Male',45,'Hyderabad','9876543212'),
(4,'Akansha Nair','Female',39,'Bengaluru','9876543213'),
(5,'Preeti Shah','Male',52,'Mumbai','9876543214'),
(6,'Ananya Rao','Female',31,'Hyderabad','9876543215'),
(7,'Vivek Sharma','Male',48,'Delhi','9876543216'),
(8,'Neha Patil','Female',26,'Pune','9876543217'),
(9,'Farhana Khan','Male',41,'Lucknow','9876543218'),
(10,'Diya Iyer','Female',36,'Chennai','9876543219'),
(11,'Sahil Deshmukh','Male',44,'Hyderabad','9876543220'),
(12,'Siya Kapoor','Female',28,'Mumbai','9876543221');

INSERT INTO doctors VALUES
(201,'Dr. Gashmeer Desai','Cardiologist',1,1000),
(202,'Dr. Kriti Menon','Orthopedic Surgeon',2,900),
(203,'Dr. Sameer Rao','Dermatologist',3,700),
(204,'Dr. Ramya Sharma','Neurologist',4,1200),
(205,'Dr. Nikhil Patil','General Physician',5,600),
(206,'Dr. Suresh Iyer','Cardiologist',1,1100),
(207,'Dr. Asha Kulkarni','Dermatologist',3,750),
(208,'Dr. Neeraj Shah','ENT Specialist',5,650);

INSERT INTO departments VALUES
(1,'Cardiology'),
(2,'Orthopedics'),
(3,'Dermatology'),
(4,'Neurology'),
(5,'General Medicine');

INSERT INTO appointments VALUES
(4001,1,201,'2026-01-02','Completed'),
(4002,2,203,'2026-01-03','Completed'),
(4003,3,201,'2026-01-05','Completed'),
(4004,4,202,'2026-01-07','Cancelled'),
(4005,5,204,'2026-01-08','Completed'),
(4006,6,205,'2026-01-10','Completed'),
(4007,7,206,'2026-01-12','Completed'),
(4008,8,203,'2026-01-15','Scheduled'),
(4009,9,202,'2026-01-18','Completed'),
(4010,10,204,'2026-01-20','Completed'),
(4011,1,205,'2026-01-22','Completed'),
(4012,2,201,'2026-01-25','Completed'),
(4013,3,206,'2026-01-28','Scheduled'),
(4014,4,207,'2026-02-01','Completed'),
(4015,5,201,'2026-02-03','Completed'),
(4016,6,202,'2026-02-05','Cancelled'),
(4017,7,204,'2026-02-07','Completed'),
(4018,8,205,'2026-02-09','Completed'),
(4019,11,206,'2026-02-11','Scheduled'),
(4020,9,207,'2026-02-13','Completed');

INSERT INTO treatments VALUES
(5001,4001,'ECG and Heart Checkup',3500),
(5002,4002,'Skin Allergy Treatment',1800),
(5003,4003,'Cardiac Consultation',4500),
(5004,4005,'Migraine Treatment',6000),
(5005,4006,'Fever and Blood Test',1500),
(5006,4007,'Heart Stress Test',7000),
(5007,4009,'Knee Pain Treatment',4200),
(5008,4010,'Nerve Checkup',6500),
(5009,4011,'General Health Checkup',1200),
(5010,4012,'Blood Pressure Treatment',3000),
(5011,4014,'Acne Treatment',2500),
(5012,4015,'Chest Pain Checkup',5500),
(5013,4017,'Brain Scan Consultation',8000),
(5014,4018,'Cold and Cough Treatment',900),
(5015,4020,'Hair Fall Treatment',2200);

INSERT INTO bills VALUES
(6001,1,4001,'2026-01-02',4500,'Paid'),
(6002,2,4002,'2026-01-03',2500,'Paid'),
(6003,3,4003,'2026-01-05',5500,'Paid'),
(6004,4,4004,'2026-01-07',900,'Unpaid'),
(6005,5,4005,'2026-01-08',7200,'Paid'),
(6006,6,4006,'2026-01-10',2100,'Paid'),
(6007,7,4007,'2026-01-12',8100,'Paid'),
(6008,9,4009,'2026-01-18',5100,'Pending'),
(6009,10,4010,'2026-01-20',7900,'Paid'),
(6010,1,4011,'2026-01-22',1800,'Paid'),
(6011,2,4012,'2026-01-25',4000,'Paid'),
(6012,4,4014,'2026-02-01',3250,'Paid'),
(6013,5,4015,'2026-02-03',6500,'Paid'),
(6014,7,4017,'2026-02-07',9200,'Pending'),
(6015,8,4018,'2026-02-09',1500,'Paid'),
(6016,9,4020,'2026-02-13',2950,'Unpaid');

INSERT INTO payments VALUES
(7001,6001,'UPI',4500,'Success'),
(7002,6002,'Cash',2500,'Success'),
(7003,6003,'UPI',4000,'Success'),
(7004,6004,'Card',0,'Failed'),
(7005,6005,'Credit Card',7200,'Success'),
(7006,6006,'UPI',2100,'Success'),
(7007,6007,'Net Banking',8100,'Success'),
(7008,6008,'Cash',3000,'Partial'),
(7009,6009,'UPI',7900,'Success'),
(7010,6010,'UPI',1800,'Success'),
(7011,6011,'Debit Card',4000,'Success'),
(7012,6012,'Cash',3250,'Success'),
(7013,6013,'UPI',6500,'Success'),
(7014,6014,'Credit Card',5000,'Partial'),
(7015,6015,'UPI',1500,'Success');