USE MASTER
GO
if DB_ID('LoginDB') IS NOT NULL
    BEGIN
        ALTER DATABASE LoginDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE LoginDB
    END
GO
CREATE DATABASE LoginDB
GO

USE LoginDB

DROP TABLE IF EXISTS Brugere
CREATE TABLE Brugere(
ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
[Name] NVARCHAR(50) NOT NULL,
Email NVARCHAR(60) UNIQUE NOT NULL,
[Password] NVARCHAR(24)
check (LEN([Password]) >= 5) NOT NULL,
)
GO

INSERT INTO Brugere ([Name] , Email,  [Password])
VALUES ('John','john_doe66@gmail.com', 'password')

INSERT INTO Brugere ([Name] , Email,  [Password])
VALUES ('Neil Armstrong','firstman@nasa.gov', 'eagleLander69')

INSERT INTO Brugere ([Name] , Email,  [Password])
VALUES ('Batman','noreply@thecave.com', 'Rob1n')

Select * from Brugere