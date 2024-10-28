-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    WarehouseName VARCHAR(50),
    WarehouseAddress VARCHAR(50),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

CREATE TABLE ProductInventory (
    ID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    WarehouseAmount INT,
    WarehouseID INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID)
);

-- Populate test data
INSERT INTO Warehouses (WarehouseID, WarehouseName, WarehouseAddress, CountryID)
    VALUES (1, 'Warehouse-1', 'City-1, Street-1', 1);
INSERT INTO Warehouses (WarehouseID, WarehouseName, WarehouseAddress, CountryID)
    VALUES (2, 'Warehouse-2', 'City-2, Street-2', 2);

INSERT INTO ProductInventory (ID, ProductName, WarehouseAmount, WarehouseID)
    VALUES (1, 'AwesomeProduct', 2, 1);
INSERT INTO ProductInventory (ID, ProductName, WarehouseAmount, WarehouseID)
    VALUES (2, 'AwesomeProduct', 5, 2);
