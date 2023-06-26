CREATE TABLE Student
(
	studentID INT PRIMARY KEY,
	student_name VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	contact VARCHAR(20) NOT NULL
);

CREATE TABLE Instructor
(
	instructorID INT PRIMARY KEY,
	instructor_name VARCHAR(50) NOT NULL,
	specialization VARCHAR(30) NOT NULL
);

CREATE TABLE Course
(
	courseID INT PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	credit_hours SMALLINT NOT NULL,
	instructorID INT REFERENCES instructor(instructorID)
);

CREATE TABLE Register
(
	registerID SERIAL PRIMARY KEY,
	studentID INT REFERENCES student(studentID),
	courseID INT REFERENCES course(courseID)
);

