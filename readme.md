# SQL Practice

SQL Problems that I solved regularly to improve my SQL skills.


## Problems
- [1084. Sales Analysis III](https://leetcode.com/problems/sales-analysis-iii/description/)

```
# Write your MySQL query statement below
select 
  product_id, 
  product_name 
from 
  Product 
where 
  product_id in (
    select 
      distinct product_id 
    from 
      Sales 
    group by 
      product_id 
    having 
      min(sale_date) >= '2019-01-01' 
      and max(sale_date) <= '2019-03-31'
  );

```

##
- [1179. Reformat Department Table](https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/)

```

select 
  id, 
  sum(
    if(month = 'Jan', revenue, null)
  ) as Jan_Revenue, 
  sum(
    if(month = 'Feb', revenue, null)
  ) as Feb_Revenue, 
  sum(
    if(month = 'Mar', revenue, null)
  ) as Mar_Revenue, 
  sum(
    if(month = 'Apr', revenue, null)
  ) as Apr_Revenue, 
  sum(
    if(month = 'May', revenue, null)
  ) as May_Revenue, 
  sum(
    if(month = 'Jun', revenue, null)
  ) as Jun_Revenue, 
  sum(
    if(month = 'Jul', revenue, null)
  ) as Jul_Revenue, 
  sum(
    if(month = 'Aug', revenue, null)
  ) as Aug_Revenue, 
  sum(
    if(month = 'Sep', revenue, null)
  ) as Sep_Revenue, 
  sum(
    if(month = 'Oct', revenue, null)
  ) as Oct_Revenue, 
  sum(
    if(month = 'Nov', revenue, null)
  ) as Nov_Revenue, 
  sum(
    if(month = 'Dec', revenue, null)
  ) as Dec_Revenue 
from 
  Department 
group by 
  id;
```
#
- [1327. List the Products Ordered in a Period](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)

 ```
 select 
  p.product_name, 
  sum(o.unit) as unit 
from 
  Products as p 
  left join Orders as o on p.product_id = o.product_id 
where 
  o.order_date like '2020-02%' 
group by 
  p.product_id 
having 
  sum(o.unit) >= 100;
 ```

#
 - [Revising the Select Query I](https://www.hackerrank.com/challenges/revising-the-select-query/problem)

 ```
 select 
  * 
from 
  CITY 
where 
  COUNTRYCODE = 'USA' 
  and POPULATION > 100000;
 ```

 #
 - [Revising the Select Query II](https://www.hackerrank.com/challenges/revising-the-select-query-2/problem)

```
select NAME
from CITY
where COUNTRYCODE = 'USA' and POPULATION > 120000;
```
#
- [Weather Observation Station 3](https://www.hackerrank.com/challenges/weather-observation-station-3/)
  - select distinct city name from stations where id's are even
```
SELECT distinct(CITY) 
FROM STATION
WHERE ID % 2 = 0;
```
#

<!-- template -->
<!-- 

- [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)

```

```
#
-->
 

