/* =========================
   ADVANCED QUERIES (21–30)
   ========================= */

-- 21. Find total marks obtained by each student
SELECT student_id, SUM(marks_obtained) AS total_marks
FROM Marks
GROUP BY student_id;

-- 22. Find average marks per subject
SELECT subject_id, AVG(marks_obtained) AS avg_marks
FROM Marks
GROUP BY subject_id;

-- 23. Find students who have not paid fees
SELECT s.first_name
FROM Students s
LEFT JOIN Fee_Payments fp ON s.student_id = fp.student_id
WHERE fp.payment_status IS NULL OR fp.payment_status = 'Pending';

-- 24. Find teachers teaching more than one subject
SELECT teacher_id, COUNT(subject_id) AS subject_count
FROM Teacher_Subject
GROUP BY teacher_id
HAVING COUNT(subject_id) > 1;

-- 25. Find students with marks greater than class average
SELECT student_id, marks_obtained
FROM Marks
WHERE marks_obtained >
      (SELECT AVG(marks_obtained) FROM Marks);

-- 26. Find class-wise student count
SELECT class_id, COUNT(student_id) AS student_count
FROM Students
GROUP BY class_id;

-- 27. Find exam-wise highest marks
SELECT exam_id, MAX(marks_obtained) AS highest_marks
FROM Marks
GROUP BY exam_id;

-- 28. Find students who were absent more than 3 days
SELECT student_id, COUNT(*) AS absent_days
FROM Attendance
WHERE status = 'Absent'
GROUP BY student_id
HAVING COUNT(*) > 3;

-- 29. Find teachers without department
SELECT t.first_name
FROM Teachers t
LEFT JOIN Teacher_Department td ON t.teacher_id = td.teacher_id
WHERE td.department_id IS NULL;

-- 30. Create a view for student performance
CREATE VIEW Student_Performance AS
SELECT s.first_name, sub.subject_name, m.marks_obtained
FROM Marks m
JOIN Students s ON m.student_id = s.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id;
