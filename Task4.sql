CREATE DATABASE Day04
Use Day04

 CREATE TABLE CUSTOMER
     (  CustomerId Int Primary Key Identity,
	   Name Varchar(50),
	   City Varchar(50)
	   )
 INSERT INTO CUSTOMER (Name, City)
     VALUES
('Nithesh', 'Chennai'),
('Priya', 'Mumbai'),
('Karthik', 'Bangalore'),
('Meena', 'Delhi'),
('Suresh', 'Kolkata'),
('Amit', 'Pune'),
('Deepa', 'Hyderabad'),
('Ravi', 'Jaipur'),
('Anjali', 'Chandigarh'),
('Manoj', 'Lucknow'),
('Preeti', 'Ahmedabad'),
('Rajesh', 'Surat'),
('Divya', 'Indore'),
('Arjun', 'Patna'),
('Sneha', 'Nagpur'),
('Vikram', 'Bhopal'),
('Lakshmi', 'Visakhapatnam'),
('Ganesh', 'Vadodara'),
('Harini', 'Coimbatore'),
('Sanjay', 'Mangalore');


CREATE TABLE Products
(
   ProductId Int Primary Key,
   ProductName Varchar(50) Not Null,
   Price Decimal(10,2) Not Null 
   )

   INSERT INTO Products (ProductId, ProductName, Price)
 VALUES
(101, 'Laptop', 55000.00),
(102, 'Mobile', 25000.00),
(103, 'Tablet', 18000.00),
(104, 'Smartwatch', 8000.00),
(105, 'Headphones', 2500.00),
(106, 'Keyboard', 1500.00),
(107, 'Mouse', 800.00),
(108, 'Monitor', 12000.00),
(109, 'Printer', 6000.00),
(110, 'Router', 3000.00),
(111, 'External Hard Drive', 4500.00),
(112, 'USB Flash Drive', 700.00),
(113, 'Webcam', 2500.00),
(114, 'Speaker', 3500.00),
(115, 'Mic', 2000.00),
(116, 'Power Bank', 1500.00),
(117, 'Charger', 800.00),
(118, 'TV', 45000.00),
(119, 'AC', 38000.00),
(120, 'Washing Machine', 32000.00);

   CREATE TABLE Orders
   ( 
     OrderId Int Primary Key,
	 CustomerId Int,
	 ProductId Int,
	 OrdersDate Date,
	 Foreign Key (CustomerId)References Customer(CustomerId),
	 Foreign Key (ProductId) References Products(ProductId)
)
	 INSERT INTO Orders (OrderId, CustomerId, ProductId, OrdersDate)
VALUES
(1001, 1, 101, '2025-08-01'),
(1002, 2, 102, '2025-08-02'),
(1003, 3, 103, '2025-08-02'),
(1004, 4, 104, '2025-08-03'),
(1005, 5, 105, '2025-08-03'),
(1006, 6, 106, '2025-08-04'),
(1007, 7, 107, '2025-08-04'),
(1008, 8, 108, '2025-08-05'),
(1009, 9, 109, '2025-08-05'),
(1010, 10, 110, '2025-08-06'),
(1011, 11, 111, '2025-08-06'),
(1012, 12, 112, '2025-08-07'),
(1013, 13, 113, '2025-08-07'),
(1014, 14, 114, '2025-08-08'),
(1015, 15, 115, '2025-08-08'),
(1016, 16, 116, '2025-08-09'),
(1017, 17, 117, '2025-08-09'),
(1018, 18, 118, '2025-08-10'),
(1019, 19, 119, '2025-08-10'),
(1020, 20, 120, '2025-08-11');

   
       Select * From CUSTOMER
	   Select * From Orders
	   Select * From Products
      
	   Select c.CustomerId, c.Name ,o.OrderId,o.OrdersDate
	   From Orders o
	   Inner Join CUSTOMER c	 ON  c. CustomerId =o .CustomerId

	    Select O.OrderId , O.CustomerId, O.ProductId, C.name, C.CustomerId
		From Orders O
		Left Join CUSTOMER c on c.CustomerId=O.CustomerId

		Select o.OrderId,o.CustomerId,o.ProductId,p.ProductName,p.ProductId
		From Orders O
		Right Join Products p On o.ProductId=p.ProductId

		Select c.customerId,c. name, c.city, o.OrderId,o.CustomerId,o.ProductId
		From CUSTOMER c
		 FULL OUTER JOIN Orders 
		 On c.customerId=o.CustomerId


		 /*.......*/




		 DROP TABLE CUSTOMER
		 DROP TABLE Orders

		 CREATE TABLE CUSTOMERs (
         CustomerId INT PRIMARY KEY,       
         Name NVARCHAR(50) NOT NULL,      
         City NVARCHAR(50)                 
          );

		  INSERT INTO CUSTOMERs(CustomerId, Name, City)
		  VALUES
                       (1, 'Ravi Kumar', 'Chennai'),
                       (2, 'Priya Sharma', 'Delhi'),
                       (3, 'Amit Verma', 'Mumbai'),
                       (4, 'Sneha Reddy', 'Hyderabad'),
                       (5, 'Karan Singh', 'Pune');

	  	  CREATE TABLE orderss(
            OrderId INT PRIMARY KEY,       
            CustomerId INT,                 
            OrderDate DATE NOT NULL,        
            Amount DECIMAL(10,2) NOT NULL   
           );
		   INSERT INTO orderss(OrderId, CustomerId, OrderDate, Amount) 
		   VALUES
                  (101, 1, '2025-08-01', 1500.00),
                  (102, 2, '2025-08-02', 2500.00),
                  (103, 1, '2025-08-05', 3200.00),
                  (104, 3, '2025-08-06', 1800.00),
                  (105, 4, '2025-08-08', 5000.00);


				  SELECT * FROM orderss
				  SELECT * FROM CUSTOMERs

				  /* 1.customer with their orders*/

				   Select c.CustomerId, c.Name,c.City ,o.amount,o.CustomerId
				   From CUSTOMERs c
				   Inner Join orderss o
				   On c.CustomerId=o.CustomerId

				/* 2.   all customers Including those who dont place any order */

				   Select c. CustomerId ,c.name ,o.CustomerId ,o.OrderDate
				   From CUSTOMERs c
				   Left Join orderss o
				   On c. CustomerId =o.CustomerId

				   /*3.all orders including these who dont have customer*/

				   Select c.NamE,c.CustomerId,O.orderId, O.CustomerId, O.AmounT
				   FrOM orderss o
				   Right Join CUSTOMERs c
				   On O.CustomerId=O.CustomerId

				  /* 4 customer who doesn't place order */

				    Select c.CustomerId,c.Name
					From CUSTOMERs c
					Left Join orderss o
					On c.CustomerId=O.CustomerId
					Where
					    o.OrderId IS NULL;

                /*  5. orders who doesnot have customer*/
				  
				    Select O.OrderId ,O.CustomerId,O.Amount,O.OrderDate , c.Name as Customername
					From orderss o
					Left Join CUSTOMERs c
					On O.CustomerId=c.CustomerId
				    WHERE c.CustomerId IS NULL;
				/* 6.customer without orders and order without customers */

				     Select O.OrderId,O.CustomerId,O.OrderDate,O.Amount 
					 From orderss o
					 Full Outer join CUSTOMERs c
					 On O.CustomerId=c.CustomerId
					 Where c.CustomerId is Null
					 Or O.CustomerId is null








