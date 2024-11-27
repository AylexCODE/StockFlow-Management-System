# Inventory Management System
> A Java Project 🙂

### Database Query
> For Admin
CREATE DATABASE StockFlow_Management_System;
USE StockFlow_Management_System;
CREATE TABLE Admins(AdminNo INTEGER AUTO_INCREMENT PRIMARY KEY, ID VARCHAR(50), Username VARCHAR(50), Password VARCHAR(50));
INSERT INTO Admins (ID, Username, Password) VALUES ("000000", "test", "test"), ("123456", "admin", "admin");

> For Inventory
USE StockFlow_Management_System;
CREATE TABLE Inventory(Product_ID INTEGER AUTO_INCREMENT PRIMARY KEY, Product_Name VARCHAR(50), Product_Price DOUBLE(5,2), Product_Sales_Value DOUBLE(5,2), Product_Stock INT(11));
INSERT INTO Inventory (Product_Name, Product_Price, Product_Sales_Value, Product_Stock) VALUES ("Metal Bat", 49.00, 79.00, 2), ("Fishing Rod", 250.00, 300.00, 4), ("Wheel", 899.00, 999.00, 2);

> For Logistics
USE StockFlow_Management_System;
CREATE TABLE Logistics(Order_ID INTEGER AUTO_INCREMENT PRIMARY KEY, Order_Type VARCHAR(10), Item_ID INT(11), Item_Name VARCHAR(50), Quantity INT(11), Amount DOUBLE(5,2), Order_Date DATETIME DEFAULT CURRENT_TIMESTAMP, Total DOUBLE(5,2));
INSERT INTO Logistics (Order_Type, Item_ID, Item_Name, Quantity, Amount, Total) VALUES ("Purchase", 1, "Metal Bat", 4, 49.00, 196.00), ("Sale", 2, "Fishing Rod", 1, 300.00, 300.00), ("Sale", 1, "Metal Bat", 5, 79.00, 395.00), ("Purchase", 2, "Fishing Rod", 2, 250.00, 500.00);
