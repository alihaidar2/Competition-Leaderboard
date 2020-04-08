-- fill contact table
INSERT INTO contact (name, email, phonenum) VALUES 
('Maeve Ward','mward@outlook.com',6135551296),
('Frank Dean','dean.frank@gmail.com',5019581726),
('Kian Fuentes','kianf9@hotmail.com',9702749105),
('Nylah Carlson','nylah.carlson@gmail.com',4089835267),
('Micheal Gibson','m.gibson@outlook.com',7198723450),
('Leyla Roth','lroth123@icloud.com',3229215180),
('Claudia Schmitt','claudia.s@hotmail.com',3433730396),
('Brenden Herman','herman@outlook.com',5997258626),
('Krystal Davenport','krysdav32@yahoo.ca',7288022830),
('Liam Richardson','richard_liam@yahoo.ca',8774331974);

-- fill partner table
INSERT INTO partner (companyname,address,contactid) VALUES 
('Crossfit','Washington, D.C',9),
('Olympic Games','Lausanne, Switzerland',5),
('IMG','New York City, New York',7),
('Reebok','25 Drydock Ave, Suite 110E Boston, MA',8),
('Adidas','8100 27 Hwy, Woodbridge, ON',7);


-- fill competition table
INSERT INTO competition (partnerid,name,venue,start_date,end_date,maxmen,maxfem,numevents,contactid) VALUES 
(1,'Crossfit Games 2020','Madison, Wisconsin','2020-10-10','2020-11-11',NULL,NULL,NULL,5),
(1,'Crossfit Games 2016','Stubhub Centre','2016-07-19','2016-07-24',NULL,NULL,NULL,3),
(2,'2018 Winter Olympics','Pyeongchang Stadium','2018-02-09','2018-02-25',NULL,NULL,NULL,2),
(2,'2016 Summer Olympics','Maracena, Rio','2016-08-05','2016-08-21',NULL,NULL,NULL,3),
(2,'2015 European Games','Baku National Stadium','2015-06-12','2015-06-28',NULL,NULL,NULL,1),
(3,'2019 Worlds Strongest Man','Bradenton, California','2019-06-13','2019-06-16',NULL,0,NULL,4);

-- fill event table
insert into event
values
(default, 1, 'Clean and Jerk'),
(default, 1, 'Sprint and Hurdles'),
(default, 1, 'Pushups'),
(default, 2, 'Ocean Swim'),
(default, 2, 'Squat Clean Pyramid'),
(default, 2, 'Pullups'),
(default, 3, '10K Skiing'),
(default, 3, 'Snowboarding'),
(default, 3, 'Speed Skating'),
(default, 4, 'Speed Rowing'),
(default, 4, 'Weightlifting'),
(default, 4, 'Boxing'),
(default, 5, 'Swimming'),
(default, 5, 'Triathlon'),
(default, 5, 'Fencing'),
(default, 6, 'Monster Truck Pull'),
(default, 6, 'Super Yoke'),
(default, 6, 'Overhead Press')


-- inserts 10 men and 10 women
insert into athlete 
values 
(default, 'Leonor Lillibridge', 'lillibridge@hotmail.com', 'f', '1966-07-05'),
(default, 'Emily Ebert', 'emebert3@gmail.com', 'f', '1970-10-14'),
(default, 'Lelah Lagos', 'lelagos1@outlook.com', 'f', '1971-08-09'),
(default, 'Shaniqua Stoneburner', 'burnstoneshaniqua@icloud.com','f', '1996-03-23'),
(default, 'Ruth Riemann', 'ruthlessruth23@gmail.com','f', '1998-01-20'),
(default, 'Cheryl Carter', 'cherrycar@hotmail.com', 'f', '1966-09-06'),
(default, 'Bailey Bertolino', 'bertbailey@hotmail.com', 'f', '1975-09-03'),
(default, 'Iliana Imhoff', 'imh.off@icloud.com', 'f', '1977-11-21'),
(default, 'Treena Tiffany', 'tiffthetree@outlook.com', 'f', '1987-08-12'),
(default, 'Yuki Yale', 'yuckykale@yahoo.ca', 'f', '1999-05-12'),
(default,'Jose Jumper', 'jumper@yahoo.ca', 'm', '1973-11-22'),
(default,'Omar Okane', 'ookane@hotmail.com', 'm', '1995-01-01'),  
(default,'Benton Bedsole', 'betonbed@gmail.com', 'm', '1995-11-01'),  
(default,'Hilton Hickel', 'hiltonhik@yahoo.ca', 'm', '1998-03-31'),  
(default,'Fredric Flowers', 'flowerpower@icloud.com', 'm', '1999-08-27'),  
(default,'Walton Wambach', 'wambach@yahoo.ca', 'm', '1975-01-28'),  
(default,'Maynard Mcfarlin', 'maynardnotcandy@gmail.com', 'm', '1978-07-05'),  
(default,'Seth Shorts', 'sethlongshorts@hotmail.com', 'm', '1989-05-18'),  
(default,'Taylor Trull', 'trulltaylor@hotmail.com', 'm', '1990-05-22'),  
(default,'Brant Bensley', 'brantbensley@outlook.com', 'm', '1994-11-07');

-- registers athleter
insert into registersfor 
values
(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),
(2,5), (9,5), (6,5), (12,5), (15,5), (19,5), (4,5), (5,5), (7,5),
(14,4), (19,4), (20,4), (11,4), (12,4), (16,4), (4,4), (5,4), (6,4),
(1,3), (2,3), (3,3), (6,3), (5,3), (4,3), (13,3), (11,3), (15,3),
(2,2), (4,2), (6,2), (9,2), (8,2), (7,2), (11,2), (12,2), (17,2),
(17,1), (16,1), (15,1), (13,1), (11,1), (12,1), (1,1), (4,1), (6,1)

