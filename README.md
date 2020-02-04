# CSI2532 Bases de donnees 1

## Membres du groupe

* Ivor Benderavage  8171462
* Ali Haidar        8328785
* Haifa Besrour     300102272

# Livrable 2
### ER Diagram
![ER diagram](https://github.com/professor-forward/projet-csi2532_team/blob/master/ERModelLivrable2.png)

### Relational model
![R diagram](https://github.com/professor-forward/projet-csi2532_team/blob/master/R-model.png)


# PostgreSQL Queries 

## **** CREATE table ****
create table Athlete (
	athleteID serial primary key,
	firstname varchar(20) not null,
	lastname varchar(20) not null,
	dob date,
	gender varchar(6) not null
)

## **** INSERT values ****
### inserts 6 athletes into the database
INSERT into athlete 
values 
(default, 'Micheal', 'Jordan', '1963-02-17', 'Male'),
(default, 'Lionel', 'Messi', '1987-06-24', 'Male'),
(default, 'Serena', 'Williams', '1981-09-26', 'Female'),
(default, 'Maria', 'Sharapova', '1987-04-19', 'Female'),
(default, 'Sidney', 'Crosby', '1987-08-07', 'Male'),
(default, 'Alex', 'Morgan', '1989-07-02', 'Female')


## **** SELECT ****
### selects first and last names and concatenates them to display a fullname 
select 
	firstname || ' ' || lastname AS full_name
FROM
	athlete

## **** UPDATE ****
### Sets the date of birth of every athlete born before 1987 to NULL
update athlete
set dob = NULL
where dob < '1987-01-01'


## **** DELETE ****
### Deletes all male athletes from the database
delete from athlete
where gender = 'Male'




