CREATE SCHEMA IF NOT EXISTS BostonCodeCampDB;
USE BostonCodeCampDB;

CREATE TABLE IF NOT EXISTS Speaker (
speakerId INT NOT NULL,
name VARCHAR(40) NULL,
emailAddress VARCHAR(320) NOT NULL,
primaryPhone VARCHAR(11) NOT NULL,
secondaryPhone VARCHAR(11) NULL,
PRIMARY KEY (speakerId));
  
CREATE TABLE IF NOT EXISTS TimeSlot (
timeId INT NOT NULL,
startTime TIME(0) NOT NULL,
endTime TIME(0) NOT NULL,
PRIMARY KEY (timeId));

CREATE TABLE IF NOT EXISTS Room (
name VARCHAR(40) NOT NULL,
capacity INT NULL,
PRIMARY KEY (name));

CREATE TABLE IF NOT EXISTS Session (
topic VARCHAR(40) NOT NULL,
speakerId INT NOT NULL,
timeId INT NOT NULL,
roomName VARCHAR(40) NOT NULL,
PRIMARY KEY (topic, timeId),
FOREIGN KEY (speakerId) REFERENCES Speaker(speakerId),
FOREIGN KEY (timeId) REFERENCES TimeSlot(timeId),
FOREIGN KEY (roomName) REFERENCES Room(name));

show tables;