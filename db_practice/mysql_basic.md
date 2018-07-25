### select all 

select e.first_name, e.last_name, t.title from employees 
e left join titles t on e.emp_no = t.emp_no;

#### with all 
select e.emp_no, e.first_name, e.last_name, t.emp_no, 
t.title from employees e left join titles t on e.emp_no 
= t.emp_no ;

### mysql function
select @min_salary:=MIN(salary),@max_salary=:MAX(salary) 
from salaries;

+--------------------------+--------------------------+
| @min_salary:=MIN(salary) | @max_salary:=MAX(salary) |
+--------------------------+--------------------------+
|                    38623 |                   158220 |
+--------------------------+--------------------------+

select * from salaries where salary=@min_salary or salary=@max_salary;
+--------+--------+------------+------------+
| emp_no | salary | from_date  | to_date    |
+--------+--------+------------+------------+
|  43624 | 158220 | 2002-03-22 | 9999-01-01 |
| 253406 |  38623 | 2002-02-20 | 9999-01-01 |
+--------+--------+------------+------------+

