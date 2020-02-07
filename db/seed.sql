INSERT INTO athletes (id, athletename, identified_gender, dob)
VALUES
(1, 'Andrew', 'm', '1975-12-01'),
(2, 'Ayana', 'F', '1998-06-11'),
(3, 'Hayden', 'm', '1996-07-24'),
(4, 'August', 'm', '1999-09-09');


INSERT INTO competitions (competitionid, name, venue, start_date_time, duration)
VALUES
(1, 'Australian open', 'Rod Laver Arena','2020-01-20', '19' ),
(2, 'Roland Garros', 'Roland Garros stadium','2020-05-18', '15'),
(3, 'FIFA', 'Qatar','2020-11-21', '30'),
(4, 'CrossFit Games', 'Madison Wisconsin', '2020-07-29', '35');

--correct case
UPDATE competitions
SET name = 'Australian Open'
WHERE name = 'Australian open'

--show which venues have events lasting longer than 20 days
SELECT venue
FROM competitions
WHERE duration > 20

--remove women from database
DELETE FROM athletes
WHERE identified_gender = 'F'