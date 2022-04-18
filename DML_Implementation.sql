

INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer1','857896101','customer1@gmail.com','garrison1 st','MA','Boston',02120,'M','2000-01-05');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer2','857896102','customer2@gmail.com','garrison2 st','CA','California',02122,'F','1997-01-05');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer3','857896103','customer3@gmail.com','garrison3 st','TX','Dallas',02123,'M','1999-03-05');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer4','857896104','customer4@gmail.com','garrison4 st','RI','Island',02124,'F','1990-04-06');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer5','857896105','customer5@gmail.com','garrison5 st','NY','Newyork',02125,'F','1995-01-05');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer6','857896106','customer6@gmail.com','garrison6 st','NJ','Jersey',02126,'M','1993-01-04');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer7','857896107','customer7@gmail.com','garrison7 st','NH','Mountains',02127,'F','2003-02-03');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer8','857896108','customer8@gmail.com','garrison8 st','WA','Washington',02128,'M','1998-03-02');
INSERT INTO customer([name],phone,email,[address],[state],city,zipcode,gender,birthdate) 
            VALUES('customer9','857896109','customer9@gmail.com','garrison9 st','CT','Connecticut',02129,'F','1992-08-01');


INSERT INTO category VALUES ('Clothing','S');
INSERT INTO category VALUES ('Shoes','Uk10');
INSERT INTO category VALUES ('Jwellery','L');
INSERT INTO category VALUES ('Watches','M');
INSERT INTO category VALUES ('Textiles','U');
INSERT INTO category VALUES ('Gifts','U');
INSERT INTO category VALUES ('Sports','U');

ALTER TABLE product ALTER COLUMN productDescription  VARCHAR(50) NULL

INSERT INTO product VALUES (102,'Nike t-shirt',null,20,30);
INSERT INTO product VALUES (102,'Adidas t-shirt','T Shirt',15,25);
INSERT INTO product VALUES (106,'Ali cartoon pillow','Pillow',10,20);
INSERT INTO product VALUES (107,'Toy car',null,23,33);
INSERT INTO product VALUES (103,'Rebook Shoes',null,50,100);
INSERT INTO product VALUES (108,'Tennis racket',null,70,80);
INSERT INTO product VALUES (103,'Puma Shoes','Classic Shoes',30,50);
INSERT INTO product VALUES (102,'AllenSolly Jeans',null,17,30);
INSERT INTO product VALUES (106,'Blanket','Comfirtable Down Blanket',35,50);
INSERT INTO product VALUES (108,'MRF Bat','Signed by Dhoni',60,120);

-- Do we need to check if the rows must be unique? If yes, how are we going to check?

ALTER TABLE Orders ALTER COLUMN shipmentID INT NULL;
ALTER TABLE Orders ADD CONSTRAINT df_orderDate DEFAULT GETDATE() FOR orderDate;

--We Can Add 'paymentType' as another column and current column to 'paymentAmount'

INSERT INTO orders (customerID,shipmentID,orderStatus,payment) 
            VALUES (1001,null,'Pending',50);
INSERT INTO orders VALUES (1002,null,'Shipped',150,'2021-03-16');
INSERT INTO orders (customerID,shipmentID,orderStatus,payment) 
            VALUES (1003,null,'Pending',100);
INSERT INTO orders VALUES (1004,null,'Sending',234,'2022-03-26');
INSERT INTO orders VALUES (1005,null,'Finished',345,'2022-03-26');
INSERT INTO orders VALUES (1006,null,'Finished',34,'2021-10-16');
INSERT INTO orders VALUES (1007,null,'Pending',545,'2022-04-16');
INSERT INTO orders VALUES (1008,null,'Pending',55,'2022-04-02');
INSERT INTO orders VALUES (1007,null,'Sending',66,'2022-12-06');
INSERT INTO orders VALUES (1005,null,'Finished',88,'2020-01-02');
INSERT INTO orders VALUES (1001,null,'Finished',99,'2020-12-13');
INSERT INTO orders VALUES (1002,null,'Sending',13,'2022-03-30');
INSERT INTO orders VALUES (1003,null,'Sending',66,'2022-4-02');


------- Edit Identity such that , only if record is inserted id should be incremented
------- Need something either trigger or function or sp to keep orders and shipment table in sync (ids and shipment status)

INSERT INTO shipments VALUES (125,'2022-02-06','Sending','UPS');
INSERT INTO shipments VALUES (126,'2021-03-16','Finished','UPS');
INSERT INTO shipments VALUES (127,'2020-12-13','Finished','FedEx');
INSERT INTO shipments VALUES (128,'2022-03-26','Sending','USPS');
INSERT INTO shipments VALUES (129,'2021-10-16','Finished','FedEx');
INSERT INTO shipments VALUES (130,'2022-12-07','Sending','USPS');
INSERT INTO shipments VALUES (130,'2020-01-02','Finished','FedEx');
INSERT INTO shipments VALUES (131,'2022-04-02','Sending','FedEx');
INSERT INTO shipments VALUES (127,'2022-03-30','Sending','UPS');
INSERT INTO shipments VALUES (132,'2022-03-28','Sending','USPS');


INSERT INTO vendor VALUES ('vendor1','addr_vendor1');
INSERT INTO vendor VALUES ('vendor2','addr_vendor2');
INSERT INTO vendor VALUES ('vendor3','addr_vendor3');
INSERT INTO vendor VALUES ('vendor4','addr_vendor4');
INSERT INTO vendor VALUES ('vendor5','addr_vendor5');
INSERT INTO vendor VALUES ('vendor6','addr_vendor6');
INSERT INTO vendor VALUES ('vendor7','addr_vendor7');
INSERT INTO vendor VALUES ('vendor8','addr_vendor8');
INSERT INTO vendor VALUES ('vendor9','addr_vendor9');
INSERT INTO vendor VALUES ('vendor10','addr_vendor10');


INSERT INTO Orderline VALUES (127,101,4)
INSERT INTO Orderline VALUES (128,102,5)
INSERT INTO Orderline VALUES (125,103,55)
INSERT INTO Orderline VALUES (126,104,61)
INSERT INTO Orderline VALUES (127,105,22)
INSERT INTO Orderline VALUES (128,106,11)
INSERT INTO Orderline VALUES (129,107,88)
INSERT INTO Orderline VALUES (134,108,09)
INSERT INTO Orderline VALUES (133,109,31)
INSERT INTO Orderline VALUES (132,110,8)

INSERT INTO SupplyChain VALUES (101,101,'2022-01-01',500);
INSERT INTO SupplyChain VALUES (102,102,'2021-01-01',50);
INSERT INTO SupplyChain VALUES (103,103,'2020-01-03',700);
INSERT INTO SupplyChain VALUES (104,104,'2020-01-04',900);
INSERT INTO SupplyChain VALUES (105,105,'2019-01-05',100);
INSERT INTO SupplyChain VALUES (106,106,'2018-01-06',50);
INSERT INTO SupplyChain VALUES (107,107,'2017-01-07',60);
INSERT INTO SupplyChain VALUES (108,108,'2016-01-08',70);
INSERT INTO SupplyChain VALUES (109,109,'2015-01-09',10);
INSERT INTO SupplyChain VALUES (101,102,'2012-01-10',20);

INSERT INTO reviews VALUES (1001,102,2,'I have never worn such comfortable clothes!');
INSERT INTO reviews VALUES (1002,103,4,'A great shopping experience');
INSERT INTO reviews VALUES (1003,105,2,'This toy is so cute!');
INSERT INTO reviews VALUES (1002,106,3,'This quality is great');
INSERT INTO reviews VALUES (1001,102,5,'I really like the color of these pants so much!');
INSERT INTO reviews VALUES (1006,107,1,'Bad quality, Bad express!');
INSERT INTO reviews VALUES (1007,103,3,'Good Strings, But a little expensive');
INSERT INTO reviews VALUES (1008,104,4,'This pillow feels so soft,I like it!');
INSERT INTO reviews VALUES (1004,107,3,'express is slow, the quality is good tho');
INSERT INTO reviews VALUES (1006,104,5,'I can play it for whole day and day!');



INSERT INTO cart VALUES (1001,102,200);
INSERT INTO cart VALUES (1002,101,100);
INSERT INTO cart VALUES (1003,103,300);
INSERT INTO cart VALUES (1004,104,400);
INSERT INTO cart VALUES (1005,105,500);
INSERT INTO cart VALUES (1006,106,20);
INSERT INTO cart VALUES (1007,102,100);
INSERT INTO cart VALUES (1008,101,20);
INSERT INTO cart VALUES (1004,105,800);
INSERT INTO cart VALUES (1005,104,900);