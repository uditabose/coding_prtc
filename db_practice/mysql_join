### inner join

select e.first_name, e.last_name, d.from_date, d.to_date from 
employees e inner join dept_manager d on e.emp_no = d.emp_no;

+-------------+--------------+------------+------------+
| first_name  | last_name    | from_date  | to_date    |
+-------------+--------------+------------+------------+
| Margareta   | Markovitch   | 1985-01-01 | 1991-10-01 |
| Vishwani    | Minakawa     | 1991-10-01 | 9999-01-01 |
| Ebru        | Alpin        | 1985-01-01 | 1989-12-17 |
| Isamu       | Legleitner   | 1989-12-17 | 9999-01-01 |
| Shirish     | Ossenbruggen | 1985-01-01 | 1992-03-21 |
| Karsten     | Sigstam      | 1992-03-21 | 9999-01-01 |
| Krassimir   | Wegerle      | 1985-01-01 | 1988-09-09 |
| Rosine      | Cools        | 1988-09-09 | 1992-08-02 |
| Shem        | Kieras       | 1992-08-02 | 1996-08-30 |
| Oscar       | Ghazalie     | 1996-08-30 | 9999-01-01 |
| DeForest    | Hagimont     | 1985-01-01 | 1992-04-25 |
| Leon        | DasSarma     | 1992-04-25 | 9999-01-01 |
| Peternela   | Onuegbe      | 1985-01-01 | 1989-05-06 |
| Rutger      | Hofmeyr      | 1989-05-06 | 1991-09-12 |
| Sanjoy      | Quadeer      | 1991-09-12 | 1994-06-28 |
| Dung        | Pesch        | 1994-06-28 | 9999-01-01 |
| Przemyslawa | Kaelbling    | 1985-01-01 | 1991-03-07 |
| Hauke       | Zhang        | 1991-03-07 | 9999-01-01 |
| Arie        | Staelin      | 1985-01-01 | 1991-04-08 |
| Hilary      | Kambil       | 1991-04-08 | 9999-01-01 |
| Tonny       | Butterworth  | 1985-01-01 | 1988-10-17 |
| Marjo       | Giarratana   | 1988-10-17 | 1992-09-08 |
| Xiaobin     | Spinelli     | 1992-09-08 | 1996-01-03 |
| Yuchang     | Weedman      | 1996-01-03 | 9999-01-01 |
+-------------+--------------+------------+------------+

### left join
select e.first_name, e.last_name, d.from_date, d.to_date from 
employees e left join dept_manager d on e.emp_no = d.emp_no;

......
| Guozhong       | Felder           | NULL       | NULL       |
| Martial        | Weisert          | NULL       | NULL       |
| Chiranjit      | Kuzuoka          | NULL       | NULL       |
| Prasadram      | Waleschkowski    | NULL       | NULL       |
| Gino           | Usery            | NULL       | NULL       |
| Yunming        | Mitina           | NULL       | NULL       |
| Mohammed       | Pleszkun         | NULL       | NULL       |
| Uri            | Juneja           | NULL       | NULL       |
| Kaijung        | Rodham           | NULL       | NULL       |
| Gila           | Lukaszewicz      | NULL       | NULL       |
| Nathan         | Ranta            | NULL       | NULL       |
| Rimli          | Dusink           | NULL       | NULL       |
| Bangqing       | Kleiser          | NULL       | NULL       |
| Keiichiro      | Lindqvist        | NULL       | NULL       |
| Khaled         | Kohling          | NULL       | NULL       |
| Pohua          | Sichman          | NULL       | NULL       |
| Siamak         | Salverda         | NULL       | NULL       |
| DeForest       | Mullainathan     | NULL       | NULL       |
| Navin          | Argence          | NULL       | NULL       |
| Dekang         | Lichtner         | NULL       | NULL       |
| Zito           | Baaz             | NULL       | NULL       |
| Berhard        | Lenart           | NULL       | NULL       |
| Patricia       | Breugel          | NULL       | NULL       |
| Sachin         | Tsukuda          | NULL       | NULL       |
+----------------+------------------+------------+------------+

### right join

select e.first_name, e.first_name, d.from_date, d.to_date from 
em
ployees e right join dept_manager d on e.emp_no = d.emp_no;
+-------------+-------------+------------+------------+
| first_name  | first_name  | from_date  | to_date    |
+-------------+-------------+------------+------------+
| Margareta   | Margareta   | 1985-01-01 | 1991-10-01 |
| Vishwani    | Vishwani    | 1991-10-01 | 9999-01-01 |
| Ebru        | Ebru        | 1985-01-01 | 1989-12-17 |
| Isamu       | Isamu       | 1989-12-17 | 9999-01-01 |
| Shirish     | Shirish     | 1985-01-01 | 1992-03-21 |
| Karsten     | Karsten     | 1992-03-21 | 9999-01-01 |
| Krassimir   | Krassimir   | 1985-01-01 | 1988-09-09 |
| Rosine      | Rosine      | 1988-09-09 | 1992-08-02 |
| Shem        | Shem        | 1992-08-02 | 1996-08-30 |
| Oscar       | Oscar       | 1996-08-30 | 9999-01-01 |
| DeForest    | DeForest    | 1985-01-01 | 1992-04-25 |
| Leon        | Leon        | 1992-04-25 | 9999-01-01 |
| Peternela   | Peternela   | 1985-01-01 | 1989-05-06 |
| Rutger      | Rutger      | 1989-05-06 | 1991-09-12 |
| Sanjoy      | Sanjoy      | 1991-09-12 | 1994-06-28 |
| Dung        | Dung        | 1994-06-28 | 9999-01-01 |
| Przemyslawa | Przemyslawa | 1985-01-01 | 1991-03-07 |
| Hauke       | Hauke       | 1991-03-07 | 9999-01-01 |
| Arie        | Arie        | 1985-01-01 | 1991-04-08 |
| Hilary      | Hilary      | 1991-04-08 | 9999-01-01 |
| Tonny       | Tonny       | 1985-01-01 | 1988-10-17 |
| Marjo       | Marjo       | 1988-10-17 | 1992-09-08 |
| Xiaobin     | Xiaobin     | 1992-09-08 | 1996-01-03 |
| Yuchang     | Yuchang     | 1996-01-03 | 9999-01-01 |
+-------------+-------------+------------+------------+


### full outer join

MySQL doesn't have one, following fails

select e.first_name, e.first_name, d.from_date, d.to_date from 
employees e full outer join dept_manager d on e.emp_no = 
d.emp_no;

emulation -

select e.first_name, e.first_name, d.from_date, d.to_date from 
employees e left join dept_manager d on e.emp_no = d.emp_no 
union all select e.first_name, e.first_name, d.from_date, 
d.to_date from dept_manager d left join employees e on d.emp_no 
= e.emp_no where e.emp_no is NULL;

......

| Gila           | Gila           | NULL       | NULL       |
| Nathan         | Nathan         | NULL       | NULL       |
| Rimli          | Rimli          | NULL       | NULL       |
| Bangqing       | Bangqing       | NULL       | NULL       |
| Keiichiro      | Keiichiro      | NULL       | NULL       |
| Khaled         | Khaled         | NULL       | NULL       |
| Pohua          | Pohua          | NULL       | NULL       |
| Siamak         | Siamak         | NULL       | NULL       |
| DeForest       | DeForest       | NULL       | NULL       |
| Navin          | Navin          | NULL       | NULL       |
| Dekang         | Dekang         | NULL       | NULL       |
| Zito           | Zito           | NULL       | NULL       |
| Berhard        | Berhard        | NULL       | NULL       |
| Patricia       | Patricia       | NULL       | NULL       |
| Sachin         | Sachin         | NULL       | NULL       |
+----------------+----------------+------------+------------+

