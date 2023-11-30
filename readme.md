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
- [1179. Reformat Department Table](https://leetcode.com/problems/reformat-department-table/description/)

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
<!-- template -->

 <!-- - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)

 ```
 
 ```
  -->
 

