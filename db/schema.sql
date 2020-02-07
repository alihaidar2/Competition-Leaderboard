CREATE TABLE competitions (
	competitionId int,
	name varchar(50),
	venue varchar(50),
	start_date_time timestamp,
	duration int,
	
	PRIMARY KEY (competitionId)
);

CREATE TABLE athletes (
  id int,
  identifier varchar(50),
  created timestamp,
  modified timestamp,
  athleteName varchar(50),
  dob date,
  identified_gender varchar(6),
  competitionId int,
  
  PRIMARY KEY (id),
  FOREIGN KEY (competitionId) REFERENCES competitions(competitionId)
);



