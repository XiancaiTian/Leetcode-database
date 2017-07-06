# Write your MySQL query statement below
SELECT class
FROM
    (SELECT  class,COUNT(*) AS NumOfStudent
     FROM (SELECT DISTINCT class,student FROM courses) DistCourse
     GROUP BY DistCourse.class) BigClasses
WHERE BigClasses.NumOfStudent > 4
