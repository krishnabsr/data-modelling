P1: Entity-Attribute-Table Structure and SQL Queries

Entities:

Theatre
Movie
Show
Date
Attributes:

Theatre:

Theatre_ID (Primary Key)
Theatre_Name
Location
Movie:

Movie_ID (Primary Key)
Movie_Name
Genre
Director
Release_Year
Show:

Show_ID (Primary Key)
Theatre_ID (Foreign Key referencing Theatre)
Movie_ID (Foreign Key referencing Movie)
Date (Foreign Key referencing Date)
Show_Time
Date:

Date_ID (Primary Key)
Date


CREATE TABLE Theatre ( Theatre_ID INT PRIMARY KEY, Theatre_Name VARCHAR(100), Location VARCHAR(100) );
 CREATE TABLE Movie ( Movie_ID INT PRIMARY KEY, Movie_Name VARCHAR(100), Genre VARCHAR(50), Director VARCHAR(100), Release_Year INT );
  CREATE TABLE Date ( Date_ID INT PRIMARY KEY, Date DATE ); 
  CREATE TABLE Show ( Show_ID INT PRIMARY KEY, Theatre_ID INT, Movie_ID INT, Date_ID INT, Show_Time TIME, FOREIGN KEY (Theatre_ID) REFERENCES Theatre(Theatre_ID), FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID), FOREIGN KEY (Date_ID) REFERENCES Date(Date_ID) );

