SELECT name,
       (COALESCE(os, 0) + COALESCE(ai, 0) + COALESCE(dbms, 0) + COALESCE(embedded, 0)) AS total_score
FROM student
ORDER BY total_score DESC
LIMIT 1 OFFSET 1;
