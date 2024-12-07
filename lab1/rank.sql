SELECT name,
       (COALESCE(os, 0) + COALESCE(ai, 0) + COALESCE(dbms, 0) + COALESCE(embedded, 0)) / 4 AS avg_marks,
       (COALESCE(os, 0) + COALESCE(ai, 0) + COALESCE(dbms, 0) + COALESCE(embedded, 0)) AS total_sc,
       RANK() OVER (ORDER BY (COALESCE(os, 0) + COALESCE(ai, 0) + COALESCE(dbms, 0) + COALESCE(embedded, 0)) DESC) AS student_rank
FROM student;
