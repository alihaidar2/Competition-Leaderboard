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