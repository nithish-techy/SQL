Create DataBase Aggretate 
Use Aggretate 


  
  

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Region VARCHAR(50),
    Amount DECIMAL(10, 2),
    Sales_Date DATE
);       
         INSERT INTO Sales (SalesID, Customer_Name, Region, Amount, Sales_Date)
         VALUES
             (1, 'Ravi', 'South', 1000.00, '2025-08-01'),
             (2, 'Sneha', 'North', 1500.00, '2025-08-02'),
             (3, 'Arjun', 'South', 700.00, '2025-08-03'),
             (4, 'Kavya', 'East', 900.00, '2025-08-04'),
             (5, 'Ravi', 'South', 1200.00, '2025-08-05'),
             (6, 'Sneha', 'North', 1100.00, '2025-08-06'),
             (7, 'Arjun', 'South', 800.00, '2025-08-07');

			 select SUM(Amount)from Sales

			 SELECT MIN(Amount) AS MinSale, MAX(Amount) AS MaxSale FROM Sales;


			 SELECT SUM(Amount) AS TotalSales FROM Sales;

			 SELECT AVG(Amount) AS AverageSale FROM Sales;

			 Select COUNT (Amount) As Amount From Sales;

			 Select  SUM(Amount) as HighSale From Sales
			 Group By Region
			 Having SUM(Amount	)>2000;

			  
/*1. Find the total sales amount from the Sales table.*/
      
	      Select SUM(Amount)AS SalesAmount From Sales

		/*  2. Find the average sales amount. */

		Select AVG (Amount) AS SalesAmount from Sales

	/*	3. Find the maximum sale amount.*/

	       Select MAX(Amount) AS MaximumSales From Sales

		/*   4. Find the minimum sale amount.*/
		 
		  Select MIN (Amount) As MinimumSale From Sales

		/*  5. Count the total number of sales transactions.*/
		    
			Select  COUNT( Amount)AS SalesTransaction From Sales

		/*	6. Display the total sales amount per customer.*/

		     Select Customer_name, SUM(Amount)AS Sales_Amount 
			 From Sales
			 Group by Customer_Name

	/*		 7. Show the average sale amount per region.*/

	               Select Region, AVG(Amount)As AverageSale 
				   from Sales
				   Group by Region


 /*        8. Count how many sales transactions happened per region.*/
                
				 Select Region ,COUNT (*) AS TransactionCount 
				 From Sales
				 Group By Region ;

	/*	 9. Find the total sales per day.*/

	     Select Sales_Date ,SUM (Amount) AS TotalSales
		 From Sales
		 Group BY Sales_Date

	/*	 10. Display the total sales amount per region.*/
	   
	    Select Region, Sum(Amount) As SalesAmount
		From Sales
		Group by Region

	/*	11. List customers with their total sales amount, sorted by total sales descending.*/

	     Select Customer_Name ,SUM(Amount) As TotalSales From Sales
		 Group By Customer_name
		 Order by  TotalSales Desc

		/* 12. List regions by the number of sales, descending.*/

		 Select Region,COUNT(*) AS NumberofSales 
		 From Sales
		 Group by Region 
		 Order by NumberofSales Desc;

	/*	 13. Show the top 3 customers with the highest total sales.*/


	     Select Top 3 Customer_name ,Sum(Amount) As HighestSale From Sales
		 Group by  Customer_name 
		 Order by HighestSale Asc

	/*	 14. List days sorted by highest total sales amount.*/

		  Select Sales_Date ,COUNT(*)AS SalesAmount From Sales
		  Group By Sales_Date
		  Order By SalesAmount Desc

	/*	  15. Show customers who made more than 1 sale.*/

	      Select Customer_Name, Count(*) As Sale From Sales
		  Group By Customer_Name 
		  Having COUNT(*)>1

  /*  16. Show customers whose total sales amount is more than ₹2000.*/
            
			Select Customer_Name ,SUM(Amount) As SalesAmount 
			From Sales
			Group by Customer_Name 
			Having SUM(Amount)>2000;


	/*	17. Find regions where average sale amount is greater than ₹1000.*/

	   Select  Region, AVG (Amount)As Averagesale 
	   From Sales
	   Group By Region
	   Having Avg(Amount)>1000

	/*   18. Show dates where total sales amount is above ₹3000.*/
	         
			 Select Sales_Date ,Sum(Amount) As SalesAmount 
			 From sales
			 Group by Sales_Date
			 HavinG Sum(AmounT)>1000

   /*	 19. Display customers who made at least 3 purchases.*/

           
		     Select Customer_name ,Count(*) As purchases
			 From Sales
			 Group by Customer_Name
			 Having Count(*) >=2

			 
       /*   20. Find regions that made more than 5 sales.*/
	          
			   Select Region, Count(*) AS saless
			   from Sales
			   Group by Region
			   Having COUNT(*) >=1






