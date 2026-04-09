/* =====================================================
   School Management System - SQL Queries
   Database: MySQL
   ===================================================== */


/* =========================
   BASIC QUERIES (1–20)
   ========================= */

-- 1. Display all students
SELECT * FROM Students;

-- 2. Display all teachers
SELECT * FROM Teachers;

-- 3. Show students with their class details
SELECT s.student_id, s.first_name, c.class_name, c.section
FROM Students s
JOIN Classes c ON s.class_id = c.class_id;

-- 4. List students ordered by admission date
SELECT * FROM Students
ORDER BY admission_date;

-- 5. Count total number of students
SELECT COUNT(*) AS total_students FROM Students;

-- 6. Show all subjects of a particular class
SELECT subject_name
FROM Subjects
WHERE class_id = 1;

-- 7. Show attendance of a student
SELECT s.first_name, a.date, a.status
FROM Attendance a
JOIN Students s ON a.student_id = s.student_id
WHERE s.student_id = 1;

-- 8. Show all exams
SELECT * FROM Exams;

-- 9. Show marks obtained by a student
SELECT s.first_name, sub.subject_name, m.marks_obtained
FROM Marks m
JOIN Students s ON m.student_id = s.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
WHERE s.student_id = 1;

-- 10. List all fee structures
SELECT * FROM Fees;

-- 11. Show fee payments of a student
SELECT s.first_name, f.amount, fp.payment_status
FROM Fee_Payments fp
JOIN Students s ON fp.student_id = s.student_id
JOIN Fees f ON fp.fee_id = f.fee_id;

-- 12. Show all parents
SELECT * FROM Parents;

-- 13. Display student-parent relationship
SELECT s.first_name, p.parent_name
FROM Student_Parent sp
JOIN Students s ON sp.student_id = s.student_id
JOIN Parents p ON sp.parent_id = p.parent_id;

-- 14. Show class timetable
SELECT c.class_name, sub.subject_name, t.first_name, tt.day, tt.time_slot
FROM Timetable tt
JOIN Classes c ON tt.class_id = c.class_id
JOIN Subjects sub ON tt.subject_id = sub.subject_id
JOIN Teachers t ON tt.teacher_id = t.teacher_id;

-- 15. List all departments
SELECT * FROM Departments;

-- 16. Show teachers with their departments
SELECT t.first_name, d.department_name
FROM Teacher_Department td
JOIN Teachers t ON td.teacher_id = t.teacher_id
JOIN Departments d ON td.department_id = d.department_id;

-- 17. Show students from a specific class
SELECT * FROM Students
WHERE class_id = 2;

-- 18. Show absent students
SELECT s.first_name, a.date
FROM Attendance a
JOIN Students s ON a.student_id = s.student_id
WHERE a.status = 'Absent';

-- 19. Show paid fee records
SELECT * FROM Fee_Payments
WHERE payment_status = 'Paid';

-- 20. Show teacher-subject allocation
SELECT t.first_name, sub.subject_name
FROM Teacher_Subject ts
JOIN Teachers t ON ts.teacher_id = t.teacher_id
JOIN Subjects sub ON ts.subject_id = sub.subject_id;

