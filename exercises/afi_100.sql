#Jan 2021:

#This exercise highlights SQL's ability to build a DATABASE with TABLES rapidly from scratch. 
#The rows in the TABLES can be added in two different ways, individually, or all at once, i.e. 'Multiple Insert'.
#The data that I chose to categorize for this project are the first ten films of the AFI Top 100.
#The full list can be found at 'https://www.afi.com/afis-100-years-100-movies-10th-anniversary-edition/'.
#The categories are RANK, NAME, YEAR, and RUNTIME_min.
#The datatypes will be VARCHAR and INT.


#Within the MySQL cli:
mysql-ctl cli

#A preliminary check of available DATABASES. 
SHOW DATABASES; 

#Creating the initial DATABASE.
CREATE DATABASE afi_movies;

#Access the DATABASE for use. 
USE afi_movies

#Creating a TABLE in the DATABASE.
CREATE TABLE afi_100
(RANK INT,
NAME VARCHAR(50),
YEAR INT,
RUNTIME_min INT);
  
#The following show the table in the DATABASE and a more granular DESCRIPTION of the table. 
SHOW TABLES;
DESC afi_100;
  
#The following populates the TABLE categories individually. 
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (1, 'Citizen Kane', 1941, 119);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (2, 'The Godfather', 1972, 178);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (3, 'Casablanca', 1942, 102);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (4, 'Raging Bull', 1980, 129);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (5, 'Singin In The Rain', 1952, 103);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (6, 'Gone With The Wind', 1939, 238);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (7, 'Lawrence Of Arabia', 1962, 228);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (8, 'Schindlers List', 1993, 197);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (9, 'Vertigo', 1958 , 129);
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (10, 'The Wizard of Oz', 1939, 112);

#OR

#The following populates the TABLE categories all at once. This method is much less cumbersome. 
INSERT INTO afi_100 (RANK, NAME, YEAR, RUNTIME_min)
VALUES (1, 'Citizen Kane', 1941, 119),
(2, 'The Godfather', 1972, 178),
(3, 'Casablanca', 1942, 102),
(4, 'Raging Bull', 1980, 129),
(5, 'Singin In The Rain', 1952, 103),
(6, 'Gone With The Wind', 1939, 238),
(7, 'Lawrence Of Arabia', 1962, 228),
(8, 'Schindlers List', 1993, 197),
(9, 'Vertigo', 1958 , 129),
(10, 'The Wizard of Oz', 1939, 112);
  
#Let's see the populated table.
SELECT * FROM afi_100;
  
#Viola! Now we have a short list of movies and their runtimes for a rainy day :)
