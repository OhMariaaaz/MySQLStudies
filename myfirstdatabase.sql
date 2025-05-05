-- Create a new database
CREATE DATABASE MyFirstDatabase;

-- Use the newly created database
USE MyFirstDatabase;

-- Create a simple table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    RegistrationDate DATE DEFAULT CURRENT_DATE
);

-- Insert sample data into the table
INSERT INTO Users (FirstName, LastName, Email)
VALUES 
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Alice', 'Johnson', 'alice.johnson@example.com');

-- Query the table to verify data
SELECT * FROM Users;