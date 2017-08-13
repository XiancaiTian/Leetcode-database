SELECT s1.* FROM stadium AS s1, stadium AS s2, stadium as s3
WHERE 
    ((S1.id + 1 = S2.id AND S1.id + 2 = S3.id)
    OR (S1.id - 1 = S2.id AND S1.id + 1 = S3.id)
    OR (S1.id - 2 = S2.id AND S1.id - 1 = S3.id))
    AND S1.people >= 100
    AND S2.people >= 100
    AND S3.people >= 100
GROUP BY s1.id