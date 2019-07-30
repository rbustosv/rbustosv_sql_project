USE db_university;
-- The average grade given by each professor
SELECT AVG(g.grades_value) average_grade, 
		p.professors_name
FROM grades g, professors p, courses c
WHERE g.grades_courses_id = c.courses_id
AND c.courses_professors_id = p.professors_id 
GROUP BY p.professors_id;

-- The top grades for each student
SELECT MAX(g.grades_value) top_grade, 
		s.students_name
FROM students s, grades g
WHERE s.students_id = g.grades_students_id
GROUP BY 2
ORDER BY 1 ASC;


-- Group students by the courses that they are enrolled in
SELECT c.courses_title, 
	   s.students_name
FROM students s, courses c, grades g
WHERE s.students_id = g.grades_students_id
AND g.grades_courses_id = c.courses_id
ORDER BY 1;

-- Create a summary report of courses and their average grades, 
-- sorted by the most challenging course (course with the lowest average grade) 
-- to the easiest course
SELECT  c.courses_title, 
		AVG(g.grades_value) average_grade
FROM courses c, grades g
WHERE c.courses_id = g.grades_courses_id
GROUP BY c.courses_id
ORDER BY 2 ASC;


-- Finding which student and professor have the most courses in common
-- in other words which student is taking multiple courses from the same professor
SELECT COUNT(c.courses_id) as num_courses, 
	   p.professors_name, 
	   s.students_name
FROM courses c, grades g, students s, professors p
WHERE c.courses_id = g.grades_courses_id
AND g.grades_students_id = s.students_id
AND p.professors_id = c.courses_professors_id
GROUP BY s.students_name, p.professors_name
HAVING COUNT(c.courses_id) = (SELECT MAX(num_courses)
								FROM 
								 (SELECT 
								COUNT(c.courses_id) as num_courses,
								p.professors_id, s.students_id
								FROM courses c, grades g, students s, professors p
								WHERE c.courses_id = g.grades_courses_id
								AND g.grades_students_id = s.students_id
								AND p.professors_id = c.courses_professors_id
								GROUP BY s.students_name, p.professors_name) AS D);