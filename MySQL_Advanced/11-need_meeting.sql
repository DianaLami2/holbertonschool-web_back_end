-- Creating the view need_meeting
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
    AND (MAX(m.meeting_date) IS NULL OR MAX(m.meeting_date) < DATEADD(month, -1, GETDATE()));
