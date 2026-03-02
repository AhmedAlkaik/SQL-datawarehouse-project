/*
--------------------------
Create databse and schemas 
---------------------------
Script purpose:
	The script creates a new database named 'DataWareHouse' after checking if it already exists. 
	It's dropped if it's already present and then recreated. Moreover, the script is setting up three
	schemas: [bronze, silver, gold].
*/


IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;
GO

CREATE DATABASE DataWareHouse;
GO

CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO


