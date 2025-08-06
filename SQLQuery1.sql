CREATE DATABASE COLLEGE
  USE COLLEGE

  CREATE TABLE Students
( 
    StudentsId INT PRIMARY KEY IDENTITY(1,1),
    StudentsName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age > 19),
    CreatedAt DATETIME DEFAULT GETDATE()
);

   Insert Into Students(  StudentsName, Email , Age )
   Values ('Nithys','Nithysmurugan@gamil.com',21),
          ('Kavi','Kavi@gmail.com',22)
                        
						
				 
				 Alter Table Students
				 Add  phone Varchar(50)
				 
		

			    Alter Table Students
				Alter Column StudentsName Varchar(150)

				Alter Table students 
				Alter column Age INT NULL;
				
				Alter Table Students
				Drop Column phone

			
				Alter Table Students
                Drop Constraint check_Age 

				Select Email As Student_Email From  Students
				 
				SELECT *
                FROM Students AS CollegeStudent;

				Alter Table Students
                Add Constraint DF_Students_Age Default 18 FOR Age;

			   Alter Table Students
               Add status Varchar(20) Constraint DF_Students_Status Default 'active';


				Select * from Students






          