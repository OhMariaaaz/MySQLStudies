USE studydb

CREATE TABLE members (
    id_member INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY(id_member)
)
SELECT * FROM members

CREATE TABLE courses (
    id_course INT AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL UNIQUE,
    description VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_course)
)
SELECT * FROM courses

CREATE TABLE enrollments (
    id_enrollment INT AUTO_INCREMENT,
    id_member INT NOT NULL,
    id_course INT NOT NULL,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_enrollment),
    FOREIGN KEY (id_member) REFERENCES members(id_member),
    FOREIGN KEY (id_course) REFERENCES courses(id_course)
);
SELECT * FROM enrollments