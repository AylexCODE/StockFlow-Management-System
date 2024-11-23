# Inventory Management System
> A Java Project 🙂

### Database Query
CREATE DATABASE StockFlow_Management_System;
USE StockFlow_Management_System;
CREATE TABLE Admins(AdminNo INTEGER AUTO_INCREMENT PRIMARY KEY, ID VARCHAR(50), Username VARCHAR(50), Password VARCHAR(50));
INSERT INTO Admins (ID, Username, Password) VALUES ("000000", "test", "test"), ("123456", "admin", "admin");
