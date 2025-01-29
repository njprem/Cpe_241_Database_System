-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS BRANCH;

-- Create the BRANCH table
CREATE TABLE BRANCH(
	branch_id INT AUTO_INCREMENT PRIMARY KEY,  
    branchLocation VARCHAR(50) NOT NULL        

-- Create the staff table with a foreign key to BRANCH
CREATE TABLE staff(
    staff_id INT PRIMARY KEY,   -- Unique staff identifier 
    branch_id INT NOT NULL,                    -- Foreign key linking to the branch (required)
    firstName VARCHAR(50) NOT NULL,            -- Staff first name (required)
    lastName VARCHAR(50) NOT NULL,             -- Staff last name (required)
    phoneNumber VARCHAR(15) NOT NULL,          -- Staff phone number (required)
    FOREIGN KEY (branch_id) REFERENCES BRANCH(branch_id)  -- Foreign key constraint
);

-- Insert data into the BRANCH table
INSERT INTO BRANCH (branchLocation)
VALUES
	('Bangkok'),
    ('Phuket'),
    ('Chiangmai');

-- Insert data into the staff table
INSERT INTO staff (branch_id, firstName, lastName, phoneNumber)
VALUES
    (1, 'Alice', 'Johnson', '1234567890'),   -- Staff in Bangkok branch
    (2, 'Brian', 'Smith', '9876543210'),    -- Staff in Phuket branch
    (3, 'Carla', 'Nguyen', '5551234567'),   -- Staff in Chiangmai branch
    (1, 'David', 'Patel', '4445556667'),    -- Another staff in Bangkok branch
    (2, 'Emily', 'Brown', '3332221111');    -- Another staff in Phuket branch

-- Select all data from both tables for verification
SELECT * FROM BRANCH;
SELECT * FROM staff;