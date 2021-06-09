select * from sys.databases
use Address_Book_ServiceDB

select * from AddressBookDB
create table person
(
person_id int identity(1,1) primary key,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
phone varchar(50),
);

create table address
(
person_id int foreign key references person(person_id),
city varchar(50),
state varchar(50),
zip int ,
);
create table addressbook
(
book_id int identity(1,1) primary key,
person_id int foreign key references person(person_id),
book_name varchar(50),
book_type varchar(50),
);
create table Person_addressbook
(
person_id int foreign key references person(person_id),
book_id int foreign key references addressbook(book_id),
);

use payroll_service
select * from employee_payroll

use Address_Book_ServiceDB
select * from AddressBookDB


select person.firstname as "name" , address.city from person inner join address on person.person_id=address.person_id;