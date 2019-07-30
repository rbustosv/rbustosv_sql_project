CREATE SCHEMA `db_university`;
CREATE TABLE `db_university`.`students` (
  `students_id` int(11) NOT NULL AUTO_INCREMENT,
  `students_name` varchar(45) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`)
);

CREATE TABLE `db_university`.`professors` (
  `professors_id` int(11) NOT NULL AUTO_INCREMENT,
  `professors_name` varchar(45) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE KEY `professors_id_UNIQUE` (`professors_id`)
);

CREATE TABLE `db_university`.`courses` (
  `courses_id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_title` varchar(45) NOT NULL,
  `courses_professors_id` int(11) NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  UNIQUE KEY `courses_title_UNIQUE` (`courses_title`),
  KEY `courses_professors_id_idx` (`courses_professors_id`),
  CONSTRAINT `courses_professors_id` FOREIGN KEY (`courses_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE CASCADE
);

CREATE TABLE `db_university`.`grades` (
  `grades_id` int(11) NOT NULL AUTO_INCREMENT,
  `grades_value` int(11) NOT NULL,
  `grades_students_id` int(11) NOT NULL,
  `grades_courses_id` int(11) NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `students_id_UNIQUE` (`grades_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
);