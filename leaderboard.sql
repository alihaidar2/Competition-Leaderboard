CREATE SEQUENCE person_id_seq;
CREATE TABLE person (
  id int DEFAULT nextval('person_id_seq'),
  name varchar(1000) NOT NULL,
  email varchar(1000) NOT NULL,
  PRIMARY KEY (id),
);


CREATE TABLE athlete
(
    id int NOT NULL,
    dob date,
    gender varchar(100),
    nationality varchar(100),
    competitionId int,
    PRIMARY KEY(id),
    FOREIGN KEY(id) REFERENCES person.id,
    FOREIGN KEY (competitionID) REFERENCES competitions(competitionID)
);

CREATE TABLE Contact
(
    id int NOT NULL,
    phoneNum int,
    PRIMARY KEY(id),
    FOREIGN KEY(id) REFERENCES person.id
);



CREATE SEQUENCE competitions_id_seq;
CREATE TABLE competitions (
  competitonID int DEFAULT nextval('competitions_id_seq'),
  name varchar(1000),
  venue varchar(1000),
  start_date date,
  end_date date,
  maxMen int,
  maxFem int,
  numEvents int,
  PRIMARY KEY (competitonID),
);

CREATE SEQUENCE partner_id_seq;
CREATE TABLE partner (
  partnerID int DEFAULT nextval('partner_id_seq'),
  companyName varchar(1000) NOT NULL,
  address varchar(1000),
  competitionID int,
  contactID int,
  PRIMARY KEY (id),
  FOREIGN KEY(competitionID) REFERENCES competitions.competitonID,
  FOREIGN KEY(contactID) REFERENCES Contact.id
);




