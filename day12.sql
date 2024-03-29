create database earlycodeacademy;
use earlycodeacademy;
#primary key
#foreign key
#default
#not null
#null
#auto_increment
#unique
create table student_reg_table(regid int primary key not null,Sname varchar (255)not null, Sage int not null);
#adding a new column to the existing table
alter table student_reg_table add column Sgender varchar(40) not null;
show columns from student_reg_table;
#to add column before the Sgender
alter table student_reg_table add column Saddress text not null after Sage;
show columns from student_reg_table;
#to create a column that comes first
alter table student_reg_table add column ID int null first;
#dropping a column from the existing table
alter table student_reg_table drop column ID;
#modifying the data type or constraint of a column in the existing table
alter table student_reg_table modify column Sname varchar(500);
#changing column name in an existing table
alter table student_reg_table change column regid registrationID int;
#renaming the table name
ALTER TABLE STUDENT_REG_TABLE RENAME TO STUDENT_INFORMATION_TABLE;
show tables;
#dropping a table
drop table student_information_table;