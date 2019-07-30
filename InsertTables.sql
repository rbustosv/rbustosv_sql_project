USE db_university;
INSERT INTO students (students_name) values ("Maria Rivera");
INSERT INTO students (students_name) values ("John Rivas");
INSERT INTO students (students_name) values ("Martha Weist");
INSERT INTO students (students_name) values ("Maxuel Nuques");
INSERT INTO students (students_name) values ("Peter Jhonson");
INSERT INTO students (students_name) values ("Leticia Hernandez");
INSERT INTO students (students_name) values ("Jose Solorzano");
INSERT INTO students (students_name) values ("Mariam Lara");
INSERT INTO students (students_name) values ("Adrian Valero");
INSERT INTO students (students_name) values ("Andrea Rodas");


INSERT INTO professors (professors_name) values ("John Smith");
INSERT INTO professors (professors_name) values ("Mary Jones");
INSERT INTO professors (professors_name) values ("Jane Brown");
INSERT INTO professors (professors_name) values ("Mark Jones");
INSERT INTO professors (professors_name) values ("John Brown");
INSERT INTO professors (professors_name) values ("Melissa Brown");
INSERT INTO professors (professors_name) values ("Mercedes Souza");
INSERT INTO professors (professors_name) values ("Kevin Smith");
INSERT INTO professors (professors_name) values ("Lucia Mendez");
INSERT INTO professors (professors_name) values ("Manuel Layton");


INSERT INTO courses (courses_title, courses_professors_id) values ("Database Systems", 1);
INSERT INTO courses (courses_title, courses_professors_id) values ("Programming 1", 1);
INSERT INTO courses (courses_title, courses_professors_id) values ("Programming 2", 1);
INSERT INTO courses (courses_title, courses_professors_id) values ("Intro to AI", 2);
INSERT INTO courses (courses_title, courses_professors_id) values ("e-Business", 3);
INSERT INTO courses (courses_title, courses_professors_id) values ("Agile Virtual Enterprise", 4);
INSERT INTO courses (courses_title, courses_professors_id) values ("Compiler Desing", 2);
INSERT INTO courses (courses_title, courses_professors_id) values ("Numerical Analysis", 2);
INSERT INTO courses (courses_title, courses_professors_id) values ("Operating Systems", 5);
INSERT INTO courses (courses_title, courses_professors_id) values ("Computational Theory", 6);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(72, 1, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(58, 1, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(68, 1, 3);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(70, 2, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(100, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(30, 2, 3);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(72, 3, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(58, 3, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(68, 3, 3);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(72, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(58, 4, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(68, 4, 6);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(72, 5, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(58, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(68, 5, 6);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(60, 6, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(35, 6, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(68, 6, 3);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(100, 6, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(90, 6, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(89, 6, 9);

INSERT INTO grades (grades_value, grades_students_id, grades_courses_id) values(60, 7, 10);