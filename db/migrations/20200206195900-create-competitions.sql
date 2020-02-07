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

ALTER TABLE athletes
ADD competitionId int;

CREATE TABLE competitions (
	competitionId int,
	name varchar(50),
  	venue varchar(50),
  	start_date_time timestamp,
 	duration int,
  	PRIMARY KEY(competitionId)
);

ALTER TABLE athletes
ADD FOREIGN KEY (competitionId) references competitions(competitionId);