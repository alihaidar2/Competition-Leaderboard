-- create contact table
CREATE TABLE contact (
    contactid serial,
    name varchar(20) NOT NULL,
    email varchar(50) NOT NULL,
    phonenum int8 NOT NULL,
    PRIMARY KEY (contactid)
);

-- create partner table
CREATE TABLE partner (
    partnerid serial,
    companyname varchar(50) NOT NULL,
    address varchar(50) NOT NULL,
    contactid int4 NOT NULL,
    CONSTRAINT partner_contact_fkey FOREIGN KEY (contactid) REFERENCES contact (contactid),
    PRIMARY KEY (partnerid)
);

-- create competition table
CREATE TABLE competition (
    competitionid serial,
    contactid int4 NOT NULL,
    partnerid int4 NOT NULL,
    name varchar(50) NOT NULL,
    venue varchar(50) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    maxmen int4,
    maxfem int4,
    numevents int4,
    CONSTRAINT competition_partnerid_fkey FOREIGN KEY (partnerid) REFERENCES partner (partnerid),
    CONSTRAINT competition_contactid_fkey FOREIGN KEY (contactid) REFERENCES contact (contactid),
    PRIMARY KEY (competitionid)
);

-- create event table
CREATE TABLE event (
    eventid serial,
    competitionid int4 NOT NULL,
    name varchar(20) NOT NULL,
    CONSTRAINT event_competitionid_fkey FOREIGN KEY (competitionid) REFERENCES competition (competitionid),
    PRIMARY KEY (eventid)
);

-- create enum for gender
create type genderchoice as enum('m', 'f');

-- create athlete table
CREATE TABLE athlete (
    athleteid serial,
    name varchar(20) NOT NULL,
    email varchar(50) NOT NULL,
    gender genderchoice NOT NULL,
    dob date NOT NULL,
    PRIMARY KEY (athleteid)
);


-- create score table
CREATE TABLE score (
    scoreid serial,
    numscore float8,
    timescore float8,
    numtie float8,
    timetie float8,
    PRIMARY KEY (scoreid)
);

-- create registerfor table
CREATE TABLE registersfor (
    athleteid int4 NOT NULL,
    competitionid int4 NOT NULL,
    CONSTRAINT registersfor_competitionid_fkey FOREIGN KEY (competitionid) REFERENCES competition (competitionid),
    CONSTRAINT registersfor_athleteid_fkey FOREIGN KEY (athleteid) REFERENCES athlete (athleteid),
    PRIMARY KEY (athleteid,competitionid)
);

-- create athletescore table
CREATE TABLE athletescore (
    scoreid int4 NOT NULL,
    athleteid int4 NOT NULL,
    eventid int4 NOT NULL,
    CONSTRAINT fk_score FOREIGN KEY (scoreid) REFERENCES score (scoreid),
    CONSTRAINT fk_sa FOREIGN KEY (athleteid) REFERENCES athlete (athleteid),
    CONSTRAINT fk_event FOREIGN KEY (eventid) REFERENCES event (eventid),
    PRIMARY KEY (scoreid,athleteid,eventid)
);
