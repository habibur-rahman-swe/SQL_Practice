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

- [Weather Observation Station 4](https://www.hackerrank.com/challenges/weather-observation-station-4/problem)

`
Finding differences between number of distinct CITY and the number of CITY in STATION table.
`

```
SELECT 
  (
    SELECT 
      Count(city) 
    FROM 
      station
  ) - (
    SELECT 
      Count(
        DISTINCT(city)
      ) 
    FROM 
      station
  ) AS COUNT;

```
#



- [Employee Salaries](https://www.hackerrank.com/challenges/salary-of-employees/problem)

`select  the  salary of the employees having the salary greater than 2000 and working less than 10 months.`
```
SELECT NAME 
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10; 
```
#


- [Weather Observation Station 5](https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=false)

`select city with the city name with the maximum length and minimun length of its name(if there are multiple then select a laxiographicaly the first one only)`

####  Approach:
1.  Select the the first one with the minimum length from in `assending` order

2.  Select the first one with the maximum length from `assending` order

3.  Union them using `union all` 

```
(SELECT city,
        Length(city)
 FROM   station
 HAVING Length(city) = (SELECT Min(Length(city))
                        FROM   station)
 ORDER  BY city
 LIMIT  1)
UNION ALL
(SELECT city,
        Length(city)
 FROM   station
 HAVING Length(city) = (SELECT Max(Length(city))
                        FROM   station)
 ORDER  BY city
 LIMIT  1); 
```
#

- [Weather Observation Station 6
](https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true)

`Finding the city where name started with a vowel(a, e, i, o, u)`
```
SELECT DISTINCT(city)
FROM station
WHERE city REGEXP '^[aeiouAEIOU]';
```
#

- [Weather Observation Station 7](https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true)

`select distinct city from station table where city end with a vowel(a, e, i, o, u)`

```
select distinct(city) from station where city regexp '[aeiou]$';
```
#

- [Weather Observation Station 8](https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=false)

`select the distinct city name from station where the city name start and end with a vowel`

```
select distinct(city)
from station
where city regexp '^[aeiou].*[aeiou]$';
```

#
- [Weather Observation Station 9](https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=false)

`select the distinct city name from station where the city name does not start with vowel`

```
select distinct(city)
from station
where city regexp '^[^aeiou]';
```
#
- [Weather Observation Station 10](https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true)

`select the distinct city name from station where the city name does not end with vowel`

```
select distinct(city)
from station
where city regexp '[^aeiou]$';
```
#
- [Weather Observation Station 11](https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=false)

`Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates`
```
select distinct(city)
from station
where city regexp '^[^aeiou].*$|[^aeiou]$';
```
#

- [Weather Observation Station 12](https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true)

`Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. result cannot contain duplicates.`

```
SELECT DISTINCT( city )
FROM   station
WHERE  city REGEXP '^[^aeiou].*[^aeiou]$'; 
```

<!-- template -->
<!-- 

- [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)

```

```
#
-->
 

