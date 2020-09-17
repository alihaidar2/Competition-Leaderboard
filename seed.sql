
INSERT INTO competitions (name, venue, start_date, end_date,maxMen,maxFem)
VALUES
('Bytown Closed 2020', 'CrossFit Bytown', '2019-10-01', DEFAULT,50,50),
('The Open 2020', 'online', '2019-10-01', '2019-12-01',70,30);

INSERT INTO athletes (dob,name,email, gender,nationality)
VALUES
('1975-12-01','Andrew', 'andrew11@gmail.com', 'm','Canada'),
('1998-06-11','Ayana', 'ayanaF@hotmail.com','F','France'),
('1996-07-24', 'Hayden','hayden1996@gmail.ca', 'm','USA' ),
('1999-09-09','August', 'august99@outlook.com','m','USA');

INSERT INTO event (name)
VALUES
('10k run'),
('As many burpees in 7 minutes'),
('21/15/9 of thrusters and pull-ups in 10 minutes'),
('As many rounds of A, B, C in 10 minutes');

INSERT INTO contact (name, email, phonenum)
VALUES
('Louise','lousieM@theopen.com','842 652 4141'),
('John','john85@theopen.com','873 145 7476'),
('Mike','Bmike@bytown.com','613 154 0023'),
('Rachel','rachL@bytown.com','983 768 4410');

INSERT INTO partner (companyName, address)
VALUES
('Reebok','25 Drydock Ave, Suite 110E Boston, MA'),
('Adidas','8100 27 Hwy, Woodbridge, ON');


INSERT INTO registrations (athleteID, competitionID, age, gender)
SELECT
    (SELECT id FROM athletes WHERE name = 'Andrew') AS athleteID,
    (SELECT id FROM competitions WHERE name = 'Bytown Closed 2020') AS competitionID,
    40,
    'm';

INSERT INTO registrations (athleteID, competitionID, age, gender)
SELECT
    (SELECT id FROM athletes WHERE name = 'Ayana') AS athleteID,
    (SELECT id FROM competitions WHERE name = 'Bytown Closed 2020') AS competitionID,
    40,
    'f';

INSERT INTO registrations (athleteID, competitionID, age, gender)
SELECT
    (SELECT id FROM athletes WHERE name = 'Hayden') AS athleteID,
    (SELECT id FROM competitions WHERE name = 'Bytown Closed 2020') AS competitionID,
    10,
    'm';
