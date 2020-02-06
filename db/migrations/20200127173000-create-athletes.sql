CREATE TABLE athletes (
  id int,
  identifier varchar(50),
  created timestamp,
  modified timestamp,
  athleteName varchar(50),
  dob date,
  identified_gender varchar(6),
  
  PRIMARY KEY (id)
);
