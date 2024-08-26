--comment

CREATE VIEW need_meeting AS
SELECT student_name
FROM students
WHERE score < 80
  AND (last_meeting IS NULL OR last_meeting < CURRENT_DATE - INTERVAL '1 month');
