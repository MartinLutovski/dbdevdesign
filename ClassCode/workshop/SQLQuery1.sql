USE master
GO

IF DB_ID('PizzaDB') IS NOT NULL
BEGIN
    ALTER DATABASE PizzaDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE PizzaDB;
END
GO


CREATE DATABASE PizzaDB
GO


USE PizzaDB
GO

DROP TABLE IF EXISTS PizzaToppings;
DROP TABLE IF EXISTS Pizzas;
DROP TABLE IF EXISTS Toppings;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS PizzaSizes;
DROP TABLE IF EXISTS Users;


CREATE TABLE Users (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(255) NULL,
    LastName NVARCHAR(255) NULL,
    Address NVARCHAR(255) NULL,
    Phone NVARCHAR(255) NULL
);

CREATE TABLE PizzaSizes (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL
);

CREATE TABLE Orders (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT NULL,
    IsDelivered BIT DEFAULT 0,
    Price DECIMAL(4, 2) NOT NULL,

    CONSTRAINT FK_Orders_Users FOREIGN KEY (UserID) REFERENCES Users(ID)
);

CREATE TABLE Toppings (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Pizzas (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    SizeID INT NOT NULL,
    OrderID INT NOT NULL,

    CONSTRAINT FK_Pizza_Size FOREIGN KEY (SizeID) REFERENCES PizzaSizes(ID),
    CONSTRAINT FK_Pizza_Order FOREIGN KEY (OrderID) REFERENCES Orders(ID)
);

CREATE TABLE PizzaToppings (
    PizzaID INT NOT NULL,
    ToppingID INT NOT NULL,
    PRIMARY KEY (PizzaID, ToppingID),

    CONSTRAINT FK_PizzaTopping_Pizza FOREIGN KEY (PizzaID) REFERENCES Pizzas(ID),
    CONSTRAINT FK_PizzaTopping_Topping FOREIGN KEY (ToppingID) REFERENCES Toppings(ID)
);
