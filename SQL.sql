-- 550. Game Play Analysis IV
SELECT ROUND(COUNT(a1.player_id) 
    / (
        SELECT COUNT(DISTINCT a2.player_id) 
        FROM Activity as A2), 2) AS fraction
FROM 
    Activity AS a1 
WHERE (a1.player_id, DATE_SUB(a1.event_date, INTERVAL 1 DAY))
IN (
    SELECT a3.player_id, MIN(a3.event_date) from Activity as a3 group by a3.player_id
);

-- 607. Sales Person
select 
  s.name 
from 
  SalesPerson as s 
where 
  s.sales_id not in (
    select 
      o.sales_id 
    from 
      Orders as o 
      left join Company as c on o.com_id = c.com_id 
    where 
      c.name = 'RED'
  );
