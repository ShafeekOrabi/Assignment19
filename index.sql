
-- 1. Create a new database named training_db
CREATE DATABASE training_db;

-- 2. Drop the database training_db
DROP DATABASE training_db;


-- 3. Re-create the database with the correct name
CREATE DATABASE employee_training_db;

-- 4. Use the employee_training_db database
USE employee_training_db;

-- Create the courses table
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    price DECIMAL(6,2),
    start_date DATE
);

-- 5. Rename the table Courses to training_courses
RENAME TABLE courses TO training_courses;

-- 6. Drop the price column
ALTER TABLE training_courses
DROP COLUMN price;

-- 7. Add duration_days column
ALTER TABLE training_courses
ADD duration_days INT;

-- Rename start_date to course_start
ALTER TABLE training_courses
RENAME COLUMN start_date TO course_start;

-- Drop duration_days column
ALTER TABLE training_courses
DROP COLUMN duration_days;

-- 8. Insert one sample course record
INSERT INTO training_courses (course_id, course_name, course_start)
VALUES (1, 'Web Development', '2026-10-01');

