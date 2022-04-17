--CREATE DATABASE 
CREATE DATABASE ORMS; 

USE [ORMS]

--CREATE Table Customer
CREATE TABLE Customer
(
    customerID INT NOT NULL PRIMARY KEY IDENTITY(1000,1),
    [name] VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    [address] VARCHAR(50) NOT NULL,
    [state] CHAR(3) NOT NULL,
    city VARCHAR(20) NOT NULL,
    zipcode INT NOT NULL,
    gender VARCHAR(50) NOT NULL,
    birthdate DATETIME NOT NULL,

    CONSTRAINT chk_gender CHECK (gender = 'M' OR gender = 'F'),
    CONSTRAINT chk_email CHECK (email LIKE '%@%'),
    CONSTRAINT chk_birthday CHECK (birthdate < GetDate()),
    CONSTRAINT chk_phone CHECK (phone not like '%[^0-9]%')
);

--CREATE Table Orders
CREATE TABLE Orders 
(  
  orderID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  customerID   INT  NOT NULL,
  shipmentID   INT  NOT NULL,
  orderStatus  VARCHAR(20) NOT NULL,
  payment  DECIMAL(18,2) NOT NULL,
  orderDate  DATETIME NOT NULL,

  constraint fk_customer_id   foreign key(customerID) REFERENCES customer(customerID)
  
)  


--CREATE Table Shipments
CREATE TABLE Shipments 
(  
  shipmentID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  orderID    INT  NOT NULL,  
  shipmentDate DATETIME   NOT NULL,  
  shipmentStatus VARCHAR(50) NOT NULL,
  shippingVendor VARCHAR(50) NOT NULL

  constraint fk_shipments_order_id   foreign key(orderID) REFERENCES orders(orderID)
)  




--CREATE Table Category
CREATE TABLE Category 
(  
  categoryID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  categoryType   VARCHAR(20)  NOT NULL,  
  categorySize  VARCHAR(20)  
-- CONSTRAINT chkSize CHECK (categorySize > 0)
)  


--CREATE Table Product
CREATE TABLE Product 
(  
  productID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  categoryID   INT  NOT NULL,  
  productName  VARCHAR(50) NOT NULL,  
  productDescription  VARCHAR(50) NOT NULL,
  purchasePrice DECIMAL(18,2) NOT null,
  sellingPrice DECIMAL(18,2) NOT NULL

  CONSTRAINT fk_category_id   FOREIGN KEY(categoryID) REFERENCES category(categoryID)
)  




--CREATE Table Vendor
CREATE TABLE Vendor 
(  
  vendorID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  vendorName   VARCHAR(50)  NOT NULL DEFAULT 'Unkown Vendor', 
  vendorAddress  VARCHAR(50) NOT NULL,  
)  

--CREATE Table SupplyChain
CREATE TABLE SupplyChain 
(  
  supplyID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  productID  INT   NOT NULL,  
  vendorID  INT  NOT NULL,  
  supplyDate DATETIME NOT NULL DEFAULT GETDATE(),
  quantity INT NOT NULL,
 
 CONSTRAINT fk_product_id   FOREIGN KEY(productID) REFERENCES Product(productID),
 CONSTRAINT fk_vendor_id   FOREIGN KEY(vendorID) REFERENCES vendor(vendorID),
 CONSTRAINT chkQuantity CHECK (quantity > 0)
)  


--CREATE Table Orderline
CREATE TABLE Orderline 
(  
  orderlineID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  orderID    INT  NOT NULL,  
  productsID  INT  NOT NULL,  
  quantity INT NOT NULL DEFAULT 0,

  CONSTRAINT fk_order_line_order_id   FOREIGN KEY (orderID) REFERENCES Orders(orderID),
  CONSTRAINT fk_order_line_products_id   FOREIGN KEY(productsID) REFERENCES Product(productID)
)  


--CREATE Table Reviews
create table Reviews
(  
  reviewID INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  customerID INT  NOT NULL,
  productID INT  NOT NULL,
  ratings    INT  NOT NULL,
  comments VARCHAR(150) NOT NULL,

  CONSTRAINT fk_review_customer_id   FOREIGN KEY(customerID) REFERENCES Customer(customerID),
  CONSTRAINT fk_review_products_id   FOREIGN KEY(productID) REFERENCES Product(productID),
  CONSTRAINT chk_rating CHECK (ratings BETWEEN 1 and 5)
)  

--CREATE Table Cart
create table Cart 
(  
  cartID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  customerID INT  NOT NULL,
  productID INT  NOT NULL,  
  totalPrice DECIMAL(18,2)  NOT NULL,  

  CONSTRAINT fk_cart_customer_id   FOREIGN KEY (customerID) REFERENCES Customer(customerID),
  CONSTRAINT fk_cart_products_id   FOREIGN KEY(productID) REFERENCES Product(productID)
)  






-- DROP TABLE Cart;
-- DROP TABLE Reviews;
-- DROP TABLE Orderline;
-- DROP TABLE SupplyChain;
-- DROP TABLE Vendor;
-- DROP TABLE Product;
-- DROP TABLE Category;
-- ALTER TABLE Shipments DROP CONSTRAINT fk_shipments_order_id;
-- ALTER TABLE Orders DROP CONSTRAINT fk_shipmentsID;
-- DROP TABLE Shipments;
-- DROP TABLE Orders;
-- DROP TABLE Customer;

GO
SELECT * FROM Customer;
GO
SELECT * FROM Orders;
GO
SELECT * FROM Shipments;
GO
SELECT * FROM Category;
GO
SELECT * FROM Product;
GO
SELECT * FROM Vendor;
GO
SELECT * FROM SupplyChain;
GO
SELECT * FROM Orderline;
GO
SELECT * FROM Reviews;
GO
SELECT * FROM Cart;

