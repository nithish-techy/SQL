    CREATE DATABASE Task5

     USE Task5

	  Create Table Department 
	  (  Dep_id Int Primary Key,
	     Dep_Name Varchar(50) Not null ,
		 City Varchar(50)
		 );

	
	INSERT INTO Department (Dep_id, Dep_Name, city)
VALUES
(1, 'Human Resources', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'Marketing', 'Los Angeles'),
(5, 'Sales', 'Boston');



				  CREATE TABLE Employee (
					emp_id INT PRIMARY KEY,
					emp_name VARCHAR(100) NOT NULL,
					salary DECIMAL(10, 2) NOT NULL,
					Dep_id INT,
					job_title VARCHAR(50),
					manager_id INT,
					join_date DATE,
					age INT,
					FOREIGN KEY (Dep_id) REFERENCES Department(Dep_id)
				);
   
	 

   
			INSERT INTO Employee (emp_id, emp_name, salary, Dep_id, job_title, manager_id, join_date, age)
			VALUES
			(101, 'Alice Johnson', 75000.00, 1, 'HR Manager', NULL, '2020-03-15', 35),
			(102, 'Bob Smith', 65000.00, 2, 'Accountant', NULL, '2021-06-01', 29),
			(103, 'Charlie Lee', 90000.00, 3, 'Software Engineer', NULL, '2019-08-21', 31),
			(104, 'Diana Carter', 72000.00, 3, 'System Analyst', 103, '2022-01-10', 28),
			(105, 'Ethan Brown', 68000.00, 4, 'Marketing Executive', NULL, '2021-09-05', 30),
			(106, 'Fiona White', 80000.00, 5, 'Sales Manager', NULL, '2018-11-12', 37),
			(107, 'George Wilson', 55000.00, 5, 'Sales Associate', 106, '2023-05-18', 26);


			Select * From Employee

		/*1.	Get the employees who work in the department with dept_id = 3.*/

                    SELECT *			
					FROM Employee
					WHERE dep_id = (
						SELECT Dep_id
						FROM Department
						WHERE Dep_id = 3
					);

				/*2.	Find the names of employees who earn more than the average salary.*/
				   
				     SELECT emp_id,emp_name, salary 
					 FROM Employee
					 WHERE salary >( SELECT AVG(Salary) 
					                 FROM Employee );

            /* 3.    Find the employee with the highest salary. */

						SELECT * FROM Employee
						WHERE salary in (  SELECT MAX(Salary)
										   From Employee
										   );

        /* 4.   Get the department name where employee 'John' works. */

		          SELECT * FROM Employee
				  WHERE emp_name='Bob smith'
				   
		
		/* 5.   Get the employee(s) whose salary is equal to the minimum salary.*/


		        SELECT emp_name, salary,emp_id 
				FROM Employee
				WHERE salary in (  SELECT MIN(Salary )FROM Employee
				)
				 
			  /*  6.	List employees who work in the same department as 'Alice'.*/

					    SELECT emp_name, dep_id
						FROM Employee
						WHERE dep_id = (
							SELECT dep_id
							FROM Employee
							WHERE emp_name = 'fiona white'
						);

			  	/*	7.	Show employee(s) whose salary is higher than the salary of employee 'David'. */


						SELECT emp_name, salary
						FROM Employee
						WHERE salary > (
							SELECT salary
							FROM Employee
							WHERE emp_name = 'alice johnson'
						);


					 /*8	List employees whose department is in the location 'New York'.*/


					      SELECT emp_name
							FROM Employee
							WHERE dep_id IN (
								SELECT dep_id
								FROM Department
								WHERE city = 'new york'
							);

					  /* 9.		Find employees whose job title matches that of employee ID 102. */

					    SELECT emp_name, job_title
						FROM Employee
						WHERE job_title = (
							SELECT job_title
							FROM Employee
							WHERE emp_id = 102
						);

					/* 10.	Get names of employees who have the same salary as someone in department 5.*/

					    SELECT emp_name, salary
						FROM Employee
						WHERE salary IN (
							SELECT salary
							FROM Employee
							WHERE dep_id = 5
						);

						/* 11.List employees who do not belong to any department listed in the departments table.*/


						SELECT *
						FROM Employee
						WHERE dep_id NOT IN 
						(SELECT dep_id FROM Department);

					/* 12.	Display all departments that have more than 5 employees.*/

					SELECT *
					FROM Department
					WHERE Dep_id in ( SELECT COUNT (*) From Employee)



				/* 13.Find employees who work in departments where the average salary is above 50,000.*/

				SELECT *
				FROM Employee
				WHERE dep_id IN (
					SELECT dep_id
					FROM Employee
					GROUP BY dep_id
					HAVING AVG(salary) >50000
				);
				/* 14.Show employees whose salary is within 10% of the maximum salary.*/

				   SELECT emp_name, salary
                   FROM Employee
				   WHERE salary >= 
				  (SELECT MAX(salary) * 0.9 FROM Employee);

			/*	15.  Get employees who joined on the same date as someone in department 2.*/

			        SELECT emp_name, dep_id, join_date
					FROM Employee
					WHERE join_date IN (
						SELECT join_date
						FROM Employee
						WHERE dep_id = 2
					);


				/* 16.	List all employees who earn more than the average salary of their department.*/

						   SELECT emp_name, dep_id, salary
							FROM Employee e
							WHERE salary > (
								SELECT AVG(salary)
								FROM Employee
								WHERE dep_id = e.dep_id
							);
						/*17.	Show employees whose department has fewer than 3 employees.*/

						SELECT emp_name, dep_id
						FROM Employee
						WHERE dep_id IN (
							SELECT dep_id
							FROM Employee
							GROUP BY dep_id
							HAVING COUNT(*) < 3
						);

					/* 18.	Get the name of the department where the highest paid employee works.*/

						SELECT dep_name
                        FROM Department
						WHERE dep_id = (
							SELECT dep_id
							FROM Employee
							WHERE salary = (SELECT MAX(salary) FROM Employee)
						);

					/* 19.	Display employees who have the same job title as someone with salary > 70,000.*/

						   SELECT emp_name, job_title, salary
							FROM Employee
							WHERE job_title IN (
								SELECT job_title
								FROM Employee
								WHERE salary > 70000
							);

						/*20.	Find employees whose salary is above the average salary of their own department.*/

						   SELECT emp_name, dep_id, salary
							FROM Employee e
							WHERE salary > (
								SELECT AVG(salary)
								FROM Employee
								WHERE dep_id = e.dep_id
							);

						/* 21.	List departments where all employees earn more than 30,000.*/
						  
						      SELECT d.dep_name
								FROM Department d
								WHERE d.dep_id IN (
									SELECT dep_id
									FROM Employee
									GROUP BY dep_id
									HAVING MIN(salary) > 30000
								);

							/* 22.Find employees who have the maximum salary in their department.*/

								 SELECT emp_name, dep_id, salary
								FROM Employee e
								WHERE salary = (
									SELECT MAX(salary)
									FROM Employee
									WHERE dep_id = e.dep_id
								);




								/*  23.Get the top 2 highest paid employees from each department.*/


								SELECT emp_name, dep_id, salary
								FROM (
									SELECT emp_name, dep_id, salary,
										   ROW_NUMBER() OVER (PARTITION BY dep_id ORDER BY salary DESC) AS rn
									FROM Employee
								) AS ranked
								WHERE rn <= 2;

							/*24.	List employees who are the only ones in their department.*/

							SELECT emp_name, dep_id
							FROM Employee
							WHERE dep_id IN (
								SELECT dep_id
								FROM Employee
								GROUP BY dep_id
								HAVING COUNT(*) = 1
							);



						/*25	Display employees whose salary is higher than any employee in department 10.*/

							SELECT emp_name, dep_id, salary
							FROM Employee
							WHERE salary > (
								SELECT MAX(salary)
								FROM Employee
								WHERE dep_id = 5
							);

						 /*23.	Find employees whose salary is greater than all employees in department 20.*/

						 SELECT emp_name, dep_id, salary
						FROM Employee
						WHERE salary > ALL (
							SELECT salary
							FROM Employee
							WHERE dep_id = 20
						);

						/*25. List the second highest salary in each department.*/

						SELECT dep_id, MAX(salary) AS second_highest_salary
						FROM Employee
						WHERE salary < (
							SELECT MAX(salary)
							FROM Employee e2
							WHERE e2.dep_id = Employee.dep_id
						)
						GROUP BY dep_id;

						/* 26.Get names of employees who have more than one subordinate (based on manager_id).*/


						SELECT emp_name
						FROM Employee
						WHERE emp_id IN (
							SELECT manager_id
							FROM Employee
							WHERE manager_id is not null
							GROUP BY manager_id
							HAVING COUNT(*) > 3
						);

           /* 27. Find the average salary of the youngest employee in each department.*/

					SELECT dep_id,AVG(salary) AS avg_salary_youngest
					FROM Employee e
					WHERE join_date = (
						SELECT MAX(join_date)
						FROM Employee
						WHERE dep_id = e.dep_id
					)
					GROUP BY dep_id;


					select * from Employee



