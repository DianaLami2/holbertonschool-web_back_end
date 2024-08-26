--ex 11

DROP VIEW need_view AS
    SELECT name
    FROM students
    WHERE score < 80 AND (
        last_meeting IS NULL 
        OR students.last_meeting (NOW(), INTERVAL , -1 MONTH)
    );
