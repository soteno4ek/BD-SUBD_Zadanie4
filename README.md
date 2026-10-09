DROP TABLE IF EXISTS Lesson;
DROP TABLE IF EXISTS Teacher;
DROP TABLE IF EXISTS Subject;

CREATE TABLE Subject (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Teacher (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    subject_id INTEGER NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subject(id)
);

CREATE TABLE Lesson (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    lesson_date TIMESTAMP NOT NULL,
    teacher_id INTEGER NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(id)
);

INSERT INTO Subject (id, name)
VALUES (1, 'Математика'),
       (2, 'Физика'),
       (3, 'Информатика');

INSERT INTO Teacher (id, name, phone, subject_id)
VALUES (1, 'Александра', '+7 866 555-35-35', 1);

INSERT INTO Lesson (id, name, lesson_date, teacher_id)
VALUES (1, 'Интегралы', '2026-03-16 13:00:00', 1);

SELECT * FROM Subject;
SELECT * FROM Teacher;
SELECT * FROM Lesson;
