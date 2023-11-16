
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
<!-- template -->
 <!-- - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates) -->
 

