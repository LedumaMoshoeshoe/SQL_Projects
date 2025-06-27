-- Insert dummy data into Students
INSERT INTO Students (student_id, first_name, last_name, age, email_address, enrolled_flag)
VALUES
    (1, 'John', 'Doe', 22, 'john@doe.com', 1),
    (2, 'Mac', 'Tastic', 23, 'Mac@tastic.com', 1),
    (3, 'Johnson', 'Nate', 23, 'johnson@nate.com', 1),
    (4, 'Michael', 'Phelps', 25, 'michael@phelps.com', 1),
    (5, 'Lauriston', 'Barends', 26, 'lauriston@barends.com', 1),
    (6, 'Pieter', 'Cordier', 26, 'pieter@cordier.com', 1),
    (7, 'Orefemetse', 'Botlhoko', 27, 'orefemetse@botlhoko.com', 1),
    (8, 'Bokang', 'Monye', 28, 'bokang@monye.com', 1),
    (9, 'Melvin', 'Abrahams', 29, 'Melvin@abrahams.com', 1),
    (10, 'Lebogang', 'Kalamore', 22, 'lebogang@kalamore.com', 1);

-- Insert dummy data into Courses
INSERT INTO Courses (course_id, course_name)
VALUES
    (101, 'Database Fundamentals'),
    (102, 'SQL Mastery'),
    (103, 'Computer Architecture'),
    (104, 'Digital Literacy Proficiency'),
    (105, 'Principles of Program and Design'),
    (106, 'Network Architecture'),
    (107, 'Programming with Python'),
    (108, 'Robotics Development'),
    (109, 'Cloud Fundamentals'),
    (110, 'Core Web Development');

-- Insert dummy data into Enrollments
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES
    (1001, 1, 101),
    (1002, 2, 102),
    (1003, 3, 103),
    (1004, 4, 104),
    (1005, 5, 105),
    (1006, 6, 106),
    (1007, 7, 107),
    (1008, 8, 108),
    (1009, 9, 109),
    (1010, 10, 110);
