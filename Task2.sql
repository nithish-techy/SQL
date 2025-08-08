      Create Database Task2
        Use Task2
		 
		 CREATE TABLE Students (
              Studentid Int Primary KEY,
              Studentname Varchar(100),
              Subject Varchar(100),
              Marks Int,
              Examdate Date,
              Department Varchar(100)
            );
			   Insert Into Students( Studentid , Studentname,  Subject , Marks ,Examdate ,Department)
			   Values 
					  
                      (1, 'Vikram', 'Science', 82, '2024-06-02', 'EEE'),
                      (2, 'Meena', 'English', 73, '2024-06-03', 'BCA'),
                      (3, 'Raj', 'History', 77, '2024-06-04', 'EEE'),
                      (4, 'Gopal', 'Science', 56, '2024-06-05', 'BCA'),
                      (5, 'Karthik', 'Maths', 100, '2024-06-06', 'EEE'),
                      (6, 'Kiran', 'English', 77, '2024-06-07', 'CS'),
                      (7, 'Aarthi', 'Science', 89, '2024-06-08', 'EEE'),
                      (8, 'Kavya', 'English', 64, '2024-06-09', 'BCA'),
                      (9, 'Ajay', 'History', 82, '2024-06-10', 'IT'),
                      (10, 'Gopal', 'Science', 66, '2024-06-11', 'BCA'),
					  (11, 'Preethi', 'English', 65, '2024-06-12', 'Computer Science'),
                      (12, 'Shruti', 'History', 55, '2024-06-13', 'BCA'),
                      (13, 'Harsha', 'History', 77, '2024-06-14', 'BCA'),
                      (14, 'Surya', 'English', 70, '2024-06-15', 'IT'),
                      (15, 'Keerthi', 'Maths', 75, '2024-06-16', 'Computer Science'),
                      (16, 'Devi', 'Maths', 96, '2024-06-17', 'CS'),
                      (17, 'Lakshmi', 'Maths', 56, '2024-06-18', 'BCA'),
                      (18, 'Rahul', 'English', 54, '2024-06-19', 'Computer Science'),
                      (19, 'Ravi', 'English', 91, '2024-06-20', 'BCA'),
                      (20, 'Chitra', 'English', 92, '2024-06-21', 'Computer Science'),
					  (21, 'Pooja', 'History', 90, '2024-06-22', 'IT'),
					  (22, 'Deepa', 'Science', 87, '2024-06-23', 'EEE'),
                      (23, 'Meena', 'History', 96, '2024-06-24', 'BCA'),
                      (24, 'Gayathri', 'Maths', 92, '2024-06-25', 'IT'),
                      (25, 'Amit', 'Science', 65, '2024-06-26', 'CS'),
                      (26, 'Rakesh', 'Maths', 86, '2024-06-27', 'EEE'),
                      (27, 'Naresh', 'History', 69, '2024-06-28', 'CS'),
                      (28, 'Naveen', 'English', 73, '2024-06-29', 'EEE'),
                      (29, 'Sanjay', 'Maths', 70, '2024-06-30', 'IT'),
                      (30, 'Sandeep', 'History', 71, '2024-07-01', 'CS'),
                      (31, 'Yash', 'Maths', 96, '2024-07-02', 'EEE'),
                      (32, 'Swetha', 'History', 72, '2024-07-03', 'CS'),
                      (33, 'Ravi', 'Maths', 87, '2024-07-04', 'EEE'),
                      (34, 'Vimal', 'Maths', 95, '2024-07-05', 'CS'),
                      (35, 'Priya', 'Science', 91, '2024-07-06', 'BCA'),
                      (36, 'Manoj', 'History', 60, '2024-07-07', 'Computer Science'),
                      (37, 'Tejas', 'History', 78, '2024-07-08', 'EEE'),
                      (38, 'Anjali', 'Science', 98, '2024-07-09', 'IT'),
                      (39, 'Bhavana', 'English', 82, '2024-07-10', 'CS'),
                      (40, 'Vikram', 'Science', 75, '2024-07-11', 'BCA'),
					  (41, 'Vinod', 'English', 60, '2024-07-12', 'BCA'),
                      (42, 'Nithya', 'Science', 94, '2024-07-13', 'IT'),
                      (43, 'Radha', 'Science', 62, '2024-07-14', 'BCA'),
                      (44, 'Ajay', 'English', 60, '2024-07-15', 'CS'),
                      (45, 'Abhinav', 'English', 99, '2024-07-16', 'EEE'),
                      (46, 'Lakshmi', 'Maths', 93, '2024-07-17', 'Computer Science'),
                      (47, 'Sneha', 'English', 64, '2024-07-18', 'CS'),
                      (48, 'Shruti', 'English', 63, '2024-07-19', 'Computer Science'),
                      (49, 'Kiran', 'Science', 98, '2024-07-20', 'EEE'),
                      (50, 'Yash', 'English', 68, '2024-07-21', 'IT'),
                      (51, 'Keerthi', 'Maths', 67, '2024-07-22', 'EEE'),
                      (52, 'Preethi', 'Science', 61, '2024-07-23', 'IT'),
                      (53, 'Raj', 'History', 76, '2024-07-24', 'Computer Science'),
                      (54, 'Rohit', 'English', 78, '2024-07-25', 'EEE'),
                      (55, 'Swetha', 'English', 98, '2024-07-26', 'CS'),
                      (56, 'Meena', 'Science', 59, '2024-07-27', 'EEE'),
                      (57, 'Aarthi', 'Maths', 70, '2024-07-28', 'BCA'),
                      (58, 'Tejas', 'English', 82, '2024-07-29', 'IT'),
                      (59, 'Manoj', 'Maths', 95, '2024-07-30', 'EEE'),
                      (60, 'Divya', 'English', 63, '2024-07-31', 'BCA'),
                      (61, 'Rakesh', 'Science', 91, '2024-08-01', 'CS'),
                      (62, 'Surya', 'History', 61, '2024-08-02', 'EEE'),
                      (63, 'Gopal', 'Maths', 77, '2024-08-03', 'Computer Science'),
                      (64, 'Naresh', 'Science', 90, '2024-08-04', 'BCA'),
                      (65, 'Pooja', 'History', 66, '2024-08-05', 'CS'),
                      (66, 'Anjali', 'English', 72, '2024-08-06', 'IT'),
                      (67, 'Chitra', 'Science', 89, '2024-08-07', 'Computer Science'),
                      (68, 'Sandeep', 'English', 54, '2024-08-08', 'EEE'),
                      (69, 'Vimal', 'Maths', 97, '2024-08-09', 'BCA'),
                      (70, 'Gayathri', 'History', 85, '2024-08-10', 'CS'),
					  (71, 'Radha', 'Maths', 76, '2024-08-11', 'IT'),
                      (72, 'Vikram', 'Science', 66, '2024-08-12', 'EEE'),
                      (73, 'Priya', 'English', 97, '2024-08-13', 'CS'),
                      (74, 'Ravi', 'Science', 84, '2024-08-14', 'Computer Science'),
                      (75, 'Bhavana', 'History', 74, '2024-08-15', 'IT'),
                      (76, 'Kavya', 'Maths', 78, '2024-08-16', 'EEE'),
                      (77, 'Vinod', 'English', 60, '2024-08-17', 'BCA'),
                      (78, 'Rohit', 'History', 86, '2024-08-18', 'CS'),
                      (79, 'Neha', 'Maths', 90, '2024-08-19', 'EEE'),
                      (80, 'Arjun', 'Science', 88, '2024-08-20', 'Computer Science'),
                      (81, 'Gopal', 'English', 85, '2024-08-21', 'IT'),
                      (82, 'Shruti', 'History', 70, '2024-08-22', 'EEE'),
                      (83, 'Sneha', 'Maths', 93, '2024-08-23', 'CS'),
                      (84, 'Abhinav', 'English', 99, '2024-08-24', 'BCA'),
                      (85, 'Lakshmi', 'Science', 65, '2024-08-25', 'Computer Science'),
                      (86, 'Sanjay', 'History', 77, '2024-08-26', 'EEE'),
                      (87, 'Preethi', 'English', 58, '2024-08-27', 'IT'),
                      (88, 'Karthik', 'Maths', 92, '2024-08-28', 'EEE'),
                      (89, 'Rahul', 'History', 68, '2024-08-29', 'BCA'),
                      (90, 'Raj', 'Science', 87, '2024-08-30', 'EEE'),
                      (91, 'Devi', 'Maths', 83, '2024-08-31', 'CS'),
                      (92, 'Tejas', 'English', 91, '2024-09-01', 'IT'),
                      (93, 'Chitra', 'Science', 73, '2024-09-02', 'EEE'),
                      (94, 'Amit', 'English', 96, '2024-09-03', 'Computer Science'),
                      (95, 'Yash', 'History', 71, '2024-09-04', 'CS'),
                      (96, 'Meena', 'Science', 86, '2024-09-05', 'BCA'),
                      (97, 'Anjali', 'English', 89, '2024-09-06', 'Computer Science'),
                      (98, 'Nithya', 'Maths', 80, '2024-09-07', 'IT'),
                      (99, 'Sandeep', 'History', 75, '2024-09-08', 'EEE'),
                      (100, 'Naresh', 'Science', 93, '2024-09-09', 'BCA');


					  Select * From Students

					 /* ⦁	Show only student names and their marks.*/
					   
					   Select studentname, marks
                           From Students;

						/*   ⦁	List all unique departments.*/

						   Select Distinct department
                               From Students;

							  /* ⦁	Find all students who scored more than 75. */

							        Select  studentid, studentname, marks
                                       From Students
                                          Where marks > 75;
 
                                /* ⦁	Get all students from the 'Computer Science' department.*/

                                           Select *From Students
                                               Where department = 'Computer Science';

								/*   ⦁	Show the details of exams taken after '2024-06-01'.*/

								               Select *
                                                      From Students
                                                          Where examdate > '2024-06-01';
 
                                   
                               /*    ⦁	Find students who took the subject 'Maths'. */
							       
								              Select *
                                                   From Students
                                                         Where subject = 'Maths';

							    /* ⦁	List students who scored between 60 and 90.*/
								         
										     Select *
                                                 From Students
                                                     Where marks Between 60 And 90;

                                  /* . Get the number of records in the table.*/

								         Select Count(*) As TotalRecords From Students

									/*	 ⦁	Get the maximum marks scored in any subject.*/
									    
										   Select Max(Marks) As MaxMarks From Students;

									/*	   ⦁	List the departments where students have taken exams in the subjects 'Maths', */

										   Select Distinct s.Department
                                              From Students s
                                                 Join Students e On s.StudentID = e.StudentID
                                                        Where e.Subject = 'Maths';

                                      /*      ⦁	List the departments where students have taken exams in the subjects 
											     'Maths', 'Physics', or 'Chemistry',
												 and the total marks scored in those subjects is greater than 200.*/

												 CREATE TABLE Exam (
                                                                ExamID Int Primary Key Identity(1,1),
                                                                StudentID Int,
                                                                Subject Varchar(50),
                                                                Marks Int,
                                                                ExamDate Date
                                                                );
											  Alter Table Exam
                                              Add Constraint Fk_Exam_Student
                                              Foreign Key (StudentID) References Students(StudentID);

											  Insert Into Exam (StudentID, Subject, Marks, ExamDate)
                                               Values 

                                                  ( 1, 'Physics', 78, '2024-06-15'),
                                                  (2, 'Chemistry', 90, '2024-06-12'),
                                                  (2, 'English', 60, '2024-07-01'),
                                                  (3, 'Maths', 88, '2024-07-10'),
                                                  (4, 'Physics', 95, '2024-06-20'),
                                                  (5, 'Maths', 82, '2024-06-25'),
												  (5, 'Chemistry', 76, '2024-07-03'),
                                                  (6, 'English', 55, '2024-07-04'),
                                                  (6, 'History', 59, '2024-07-06'),
                                                  (7, 'Physics', 91, '2024-07-02'),
                                                  (8, 'Maths', 94, '2024-06-30'),
                                                  (9, 'Chemistry', 87, '2024-07-01'),
                                                  (10, 'History', 66, '2024-07-07');

												  Select * From Exam



                                               Select s.Department, Sum(e.Marks) AS TotalMarks
                                                    From Students s
                                                      JOIN Exam e On s.StudentID = e.StudentID
                                                        Where e.Subject IN ('Maths', 'Physics', 'Chemistry')
                                                          Group By s.Department
                                                            Having Sum(e.Marks) > 200;

					/*	⦁	Find the number of students in each department who scored marks between 60 and 90,
					and show only those departments having more than 5 such students.*/

					                              Select s.Department, Count(Distinct s.StudentID) AS StudentCount
                                                        From Students s
                                                            Join Exam e ON s.StudentID = e.StudentID
                                                               Where e.Marks Between 60 And 90
                                                                 Group By s.Department
                                                                   Having Count(Distinct s.StudentID) > 5;


		     /*  ⦁	Show the average marks per subject for the 'Computer Science' department only. 
			      Display only those subjects where the average marks are below 65.*/ 
				                             
											           SELECT e.Subject, AVG(e.Marks) AS AverageMarks
                                                            FROM Students s
                                                                 JOIN Exam e ON s.StudentID = e.StudentID
                                                                   WHERE s.Department = 'Computer Science'
                                                                       GROUP BY e.Subject
                                                                          HAVING AVG(e.Marks) < 65;

                         /* ⦁	Find the highest marks scored in each subject and display it with an alias top_score*/
																		  
																		  SELECT Subject, MAX(Marks) AS top_score
                                                                                FROM Exam
                                                                                   GROUP BY Subject;

                             /*   ⦁	Show the minimum marks in each department for students who wrote exams
					    in 'English' or 'History', and only include departments where the minimum mark is above 40.*/


					                                             SELECT s.Department, MIN(e.Marks) AS MinMarks
                                                                    FROM Students s
                                                                       JOIN Exam e ON s.StudentID = e.StudentID
                                                                           WHERE e.Subject IN ('English', 'History')
                                                                             GROUP BY s.Department
                           
                                /*⦁	Find the names of students from the 'Computer Science' or 'Electronics' department 
	                               who scored marks between 70 and 90, and gave their exam after '2024-06-01'.
                                                    HAVING MIN(e.Marks) > 40;*/

													SELECT s.StudentName, s.Department, e.Subject, e.Marks, e.ExamDate
                                                        FROM Students s
                                                           JOIN Exam e ON s.StudentID = e.StudentID
                                                               WHERE s.Department IN ('Computer Science', 'Electronics')
                                                                   AND e.Marks BETWEEN 70 AND 90
                                                                       AND e.ExamDate > '2024-06-01';

                                  /*    ⦁	For each subject, find the average marks and display only those subjects 
								  where the average marks are more than 75.*/

								                        Select Subject, AVG(Marks) AS AverageMarks
                                                             From Exam
                                                               Group By Subject
                                                                   Having AVG(Marks) > 75;

									/* ⦁	Find the total marks of students whose names are in a given
									list ('Ravi', 'Sneha', 'Arjun'). Use alias for total marks.*/

									    SELECT s.StudentName, SUM(e.Marks) AS total_marks
                                                  FROM Students s
                                                     JOIN Exam e ON s.StudentID = e.StudentID
                                                      WHERE s.StudentName IN ('Ravi', 'Sneha', 'Arjun')
                                                          GROUP BY s.StudentName;
                                            
									/*	⦁	Find the departments that have more than 3 students scoring an 
									average of more than 80 marks in total exams. Show department, average marks, and count of students.*/




	

                                                          SELECT HighScorers.Department, 
                                                              COUNT(*) AS StudentCount, 
                                                                  AVG(HighScorers.StudentAvgMarks) AS DepartmentAvg
                                                                       FROM (
                                                                       SELECT s.StudentID, s.Department, AVG(e.Marks) AS StudentAvgMarks
                                                                       FROM Students s
                                                                       JOIN Exam e ON s.StudentID = e.StudentID
                                                                       GROUP BY s.StudentID, s.Department
                                                                        HAVING AVG(e.Marks) > 80
                                                                         ) AS HighScorers
                                                                        GROUP BY HighScorers.Department
																		HAVING COUNT(*) > 3;  











      


