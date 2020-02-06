# CSI2532 - Bases de Données I

## Outline

| Outline | Value |
| --- | --- |
| Course | CSI 2532 |
| Date | Winter 2020 |
| Professor | [Andrew Forward](aforward@uottawa.ca) |
| Team | Ali Haidar 8328785<br> Ivor Benderavage 8171462<br> Haifa Besrour 300102272<br> |

## Deliverables

### Deliverable 1

## Application Description

The leaderboard database models an athlete

## ER Model

![ER Model](D1_files/ErModel.png)

## Relational Model

![ER Model](D1_files/RelationalModel.png)

## SQL Schema

```sql
CREATE TABLE athletes (
  id int,
  identifier varchar(50),
  created timestamp,
  modified timestamp,
  name varchar(50),
  dob date,
  identified_gender varchar(6),
  PRIMARY KEY (id)
);
```

## Example SQL Queries

### INSERT

```sql
INSERT INTO athletes (id, name, identified_gender, dob)
VALUES
(1, 'Andrew', 'm', '1975-12-01'),
(2, 'Ayana', 'F', '1998-06-11'),
(3, 'Hayden', 'm', '1996-07-24'),
(4, 'August', 'm', '1999-09-09');
```

### SELECT 

```sql
SELECT *
FROM athletes
WHERE identified_gender = 'F';
```

### UPDATE

```sql
UPDATE athletes
SET identified_gender = 'M'
WHERE identified_gender = 'm';
```

### SELECT

```sql
SELECT *
FROM athletes
WHERE identified_gender = 'M';
```

### DELETE

```sql
DELETE FROM athletes;
```

### SELECT

```sql
SELECT count(*)
FROM athletes;
```
