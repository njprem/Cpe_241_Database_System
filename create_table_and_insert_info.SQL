-- Nutthawut Jaroenchokwittaya 66070503421
DROP TABLE IF EXISTS staff;
CREATE TABLE staff(             
	staff_id INT PRIMARY KEY,			-- Create a table staff which contains the following fields.
	firstName VARCHAR(50) NOT NULL,     
    lastName VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);

INSERT INTO staff (staff_id, firstName, lastName, DOB, position, salary)	-- insert records to the database
VALUES 
(101, 'Alice', 'Johnson', '1990-03-15', 'Software Engineer', 85000 ),
(102, 'Brian', 'Smith', '1985-07-22', 'Project Manager', 95000 ),
(103, 'Carla', 'Nguyen', '1992-11-08', 'UX Designer', 78000 ),
(104, 'David', 'Patel', '1988-05-12', 'Data Analyst', 82000 ),
(105, 'Emily', 'Brown', '1995-09-30', 'HR Specialist', 72000 );

SELECT * FROM staff;       -- select all information from staff table