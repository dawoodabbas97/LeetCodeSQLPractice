WITH areas 
     AS (SELECT p1.*, 
                p2.id 
                p2_id, 
                Abs(( p1.x_value - p2.x_value ) * ( p1.y_value - p2.y_value )) 
                AS 
                area 
         FROM   points p1 
                INNER JOIN points p2 
                        ON p1.id < p2.id) 
SELECT id    AS P1, 
       p2_id AS P2, 
       area 
FROM   areas 
WHERE  area <> 0 
ORDER  BY 3 DESC, 1, 2 