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


- [Employee Names](https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=false)

```
SELECT NAME
FROM   employee
ORDER  BY NAME; 
```
#

- [Symmetric Pairs](https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=false)

  - given columns of the table `functions` are `x`, `y`
  - `Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.`

  - `Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.`

```
SELECT f1.x,
       f1.y
FROM   functions AS f1
       INNER JOIN functions AS f2
               ON f1.x = f2.y
                  AND f1.y = f2.x
GROUP  BY f1.x,
          f1.y
HAVING f1.x < f1.y
        OR f1.x = f1.y
           AND Count(*) > 1
ORDER  BY f1.x; 
```

#

- [Weather Observation Station 12](https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true)

`Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. result cannot contain duplicates.`

```
SELECT DISTINCT( city )
FROM   station
WHERE  city REGEXP '^[^aeiou].*[^aeiou]$'; 
```
- [Higher Than 75 Marks](https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=false)

`Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.`

```
SELECT NAME
FROM   students
WHERE  marks > 75
ORDER  BY Substring(NAME, -3),
          id ASC; 
```

```
SELECT NAME
FROM   students
WHERE  marks > 75
ORDER  BY RIGHT(NAME, 3),
          id ASC; 
```

- [Type of Triangle](https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=false)

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-  Equilateral: It's a triangle with  sides of equal length.
-  Isosceles: It's a triangle with  sides of equal length.
-  Scalene: It's a triangle with  sides of differing lengths.
-  Not A Triangle: The given values of A, B, and C don't form a triangle.

```
SELECT CASE
         WHEN a = b
              AND b = c THEN 'Equilateral'
         WHEN a = b
              AND a + b > c
               OR b = c
                  AND b + c > a
               OR a + c > b
                  AND a = c THEN 'Isosceles'
         WHEN a > b
              AND a > c
              AND b + c > a
               OR b > a
                  AND b > c
                  AND a + c > b
               OR c > a
                  AND c > b
                  AND a + b > c THEN 'Scalene'
         ELSE "not a triangle"
       END
FROM   triangles; 
```
#

- [The PADS](https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true)

```
SELECT Concat(NAME, '(', LEFT(occupation, 1), ')')
FROM   occupations
ORDER  BY NAME;

SELECT Concat('There are a total of ', Count(occupation), ' ', Lower(occupation)
       , 's.')
FROM   occupations
GROUP  BY occupation
ORDER  BY Count(occupation),
          occupation; 
```
#

- [Occupations](https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true)

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

```
set @r1=0, @r2=0,@r3=0,@r4=0;

select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
    select
        case 
            when occupation='Doctor' then (@r1:=@r1+1)
            when occupation='Professor' then (@r2:=@r2+1)
            when occupation='Singer' then (@r3:=@r3+1)
            when occupation='Actor' then (@r4:=@r4+1)
        end as rownumber,
    
        case when occupation='Doctor' then name end as 'Doctor',
        case when occupation='Professor' then name end as 'Professor',
        case when occupation='Singer' then name end as 'Singer',
        case when occupation='Actor' then name end as 'Actor'
    from occupations order by name
) as temp group by rownumber;

```
#

<!-- template -->
<!-- 

- [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)

```

```
#
-->
 

