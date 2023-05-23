DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
  teacher_id BIGINT PRIMARY KEY
  , teacher_name VARCHAR(64)
);

INSERT INTO teachers VALUES (101,'寺内鞍');
INSERT INTO teachers VALUES (102,'田尻朋美');
INSERT INTO teachers VALUES (103,'内村海凪');

DROP TABLE IF EXISTS students;

CREATE TABLE students (
  student_id BIGINT PRIMARY KEY
  , student_name VARCHAR(64)
);

INSERT INTO students VALUES (301,'黒沢春馬');
INSERT INTO students VALUES (302,'新垣愛留');
INSERT INTO students VALUES (303,'柴崎春花');
INSERT INTO students VALUES (304,'森下風凛');
INSERT INTO students VALUES (305,'河口菜恵子');
INSERT INTO students VALUES (306,'河田咲奈');
INSERT INTO students VALUES (307,'織田柚夏');
INSERT INTO students VALUES (308,'永田悦子');
INSERT INTO students VALUES (309,'相沢吉夫');
INSERT INTO students VALUES (310,'吉川伽羅');

DROP TABLE IF EXISTS courses;

CREATE TABLE courses (
  course_id VARCHAR(16) PRIMARY KEY
  , course_name VARCHAR(128) NOT NULL
  , teacher_id BIGINT
  , FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO courses VALUES (1,'ITのための基礎知識',101);
INSERT INTO courses VALUES (2,'UNIX入門',102);
INSERT INTO courses VALUES (3,'Cプログラミング演習',101);

DROP TABLE IF EXISTS student_courses;

CREATE TABLE student_courses (
  course_id VARCHAR(16)
  , student_id BIGINT

  , FOREIGN KEY (course_id) REFERENCES courses(course_id)
  , FOREIGN KEY (student_id) REFERENCES students(student_id)
  , PRIMARY KEY (course_id, student_id)
);

INSERT INTO student_courses VALUES (1,301);
INSERT INTO student_courses VALUES (1,302);
INSERT INTO student_courses VALUES (1,303);
INSERT INTO student_courses VALUES (1,306);
INSERT INTO student_courses VALUES (1,307);
INSERT INTO student_courses VALUES (1,308);
INSERT INTO student_courses VALUES (1,310);
INSERT INTO student_courses VALUES (2,301);
INSERT INTO student_courses VALUES (2,309);
INSERT INTO student_courses VALUES (3,310);
