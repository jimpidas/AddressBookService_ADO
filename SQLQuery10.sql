use payroll_service

insert into employee_payroll values
('Tessa',700000.0,'2020-08-14','F','8734586245','sales','india',100.0,12000.0,2000.0,1233.0)

update employee_payroll set taxable_pay=12000.00, department='marketing',income_tax=2000.00, net_pay=1233 where id=4;
select * from employee_payroll 

alter table employee_payroll add
phone varchar(13);

create table Employee
(
emp_id int identity primary key,
name varchar(50),
startdate date,
gender char(1),
phone varchar(13),
address varchar(50),
);
select * from Employee
create table Department
(
dept_id int identity primary key,
rooms int,
emp_id int FOREIGN KEY REFERENCES employee(emp_id)
);
select * from Department

create table Payroll
(
emp_id int FOREIGN KEY REFERENCES employee(emp_id),
basicpay money,
deduction money,
taxable_pay money,
income_tax money,
net_pay money,
);

select * from Payroll

create table Company
(
emp_id int foreign key references employee(emp_id),
company_name varchar(50),
);

create table Employee_Department
(
emp_id int foreign key references employee(emp_id),
dept_id int foreign key references Department(dept_id),
);

alter table department drop column emp_id
select * from employee_payroll
