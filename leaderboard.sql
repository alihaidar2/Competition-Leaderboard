CREATE TABLE competitions (
  competitionID SERIAL NOT NULL,
  name varchar(1000),
  venue varchar(1000),
  start_date date,
  end_date date,
  maxMen int,
  maxFem int,
  numEvents int,
  partnerID int,
  PRIMARY KEY (competitionID ),
  FOREIGN KEY(partnerID) REFERENCES partner(partnerID)
);

CREATE TABLE event (
  eventID SERIAL NOT NULL,
  name varchar(1000),
  competitionID int,
  PRIMARY KEY (eventID),
  FOREIGN KEY (competitionID) REFERENCES competitions(competitionID)
);
 
CREATE TABLE athlete
(
  id SERIAL NOT NULL,
  dob date,
  name varchar(1000) NOT NULL,
  email varchar(1000) NOT NULL,
  gender varchar(100),
  nationality varchar(100),
  competitionID int,
  eventID int,
  PRIMARY KEY(id),
  FOREIGN KEY (competitionID) REFERENCES competitions(competitionID),
  FOREIGN KEY (eventID) REFERENCES event(eventID)
);

CREATE TABLE contact
(
  contactID SERIAL NOT NULL,
  name varchar(1000) NOT NULL,
  email varchar(1000) NOT NULL,
  phoneNum int,
  competitionID int,
  partnerID int,
  PRIMARY KEY(contactID),
  FOREIGN KEY(competitionID) REFERENCES competitions(competitionID),
  FOREIGN KEY(partnerID) REFERENCES partner(partnerID)
);

CREATE TABLE partner (
  partnerID SERIAL NOT NULL,
  companyName varchar(1000) NOT NULL,
  address varchar(1000),
  contactID int,
  PRIMARY KEY (partnerID),
  FOREIGN KEY(contactID) REFERENCES contact(contactID)
);


CREATE TABLE score (
  num_score int,
  time_score TIMESTAMP,
  num_tie int,
  time_tie TIMESTAMP,
  athleteID int REFERENCES athlete(id),
  eventID int REFERENCES event(eventID),
  PRIMARY KEY (athleteID, eventID)
);



