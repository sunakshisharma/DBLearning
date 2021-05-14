create TABLE Department(Dept_No Number(3),Emp_No NUMBER(3));

insert into department VALUES(101,1);
insert into department VALUES(102,2);
insert into department VALUES(103,3);
insert into department VALUES(104,10);

Select * from department;

Select * from employee; 

Select * from department RIGHT JOIN employee ON department.Emp_No = employee.emp_no; 

Select * from department d full join employee e on d.emp_No=e.emp_no where d.emp_no is not null and e.emp_no is not null;

Select * from department d join employee e on d.emp_no=e.emp_no;

Select d.* from department d join employee e on d.emp_no=e.emp_no;

Select * from department d left join employee e on d.emp_no=e.emp_no;

Select d.* 
from department d Left join employee e on  d.emp_no = e.emp_no 
where e.emp_no is null;


 create table Store(Str_no number(3),Emp_no number(3));
 
 insert into store values(100,1);
 insert into store values(200,2);
 
 
 -- Joining multiple table
 Select e.emp_no,e.emp_name,d.dept_no,s.str_no,e.emp_Sal 
 from Employee e 
  join department d on e.emp_no=d.emp_no 
  join Store s  on d.emp_no=s.emp_no
  where e.emp_no= 3;
  
  Select distinct * from department order by emp_no;    --- getting unique value using distinct
  
  Select * 
  from department
  where emp_no < 3
  group by dept_no,emp_no 
  order by emp_no ;     --- getting unique value without using distinct
  
  
  