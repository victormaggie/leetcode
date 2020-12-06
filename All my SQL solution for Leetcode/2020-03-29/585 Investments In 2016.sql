SELECT
    SUM(TIV_2016) AS TIV_2016
FROM 
    insurance I 
WHERE 
    I.TIV_2015 IN (SELECT TIV_2015 FROM insurance GROUP BY TIV_2015 HAVING COUNT(TIV_2015) > 1)
    AND
    (I.LAT, I.LON) IN (SELECT LAT, LON FROM insurance GROUP BY LAT, LON HAVING COUNT(*) = 1)
