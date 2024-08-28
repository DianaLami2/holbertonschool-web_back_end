-- SQL script that creates a view need_meeting that lists all students 
--that have a score under 80 (strict) and no last_meeting or more than 1 month.

CREATE VIEW need_meeting AS
SELECT 
    s.student_name
FROM 
    students s
LEFT JOIN 
    meetings m
ON 
    s.student_id = m.student_id
GROUP BY 
    s.student_name, s.score
HAVING 
    s.score < 80
    AND (MAX(m.meeting_date) IS NULL OR MAX(m.meeting_date) < CURRENT_DATE - INTERVAL '1 month');
