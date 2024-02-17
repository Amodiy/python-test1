use j_waec_system;
alter table student_score add column studentID int primary key not null auto_increment first;
select * from student_score;
alter table student_personal_information add column studentID int primary key not null auto_increment first;
alter table student_activities_table add column studentID int primary key not null auto_increment first;
#mysql conditions
select * from studentper;
select * from studentper where (age <=13 and age= 12) and schoolsup='yes';
select * from studentper where guardian = 'father' or traveltime >=2;
select * from studentper where guardian = 'father' or traveltime <=2;
select * from studentper where (age <=13 and age= 12) or schoolsup='yes';
select * from studentper where JS11stterm between 25 and 60;
select * from studentper where JS11stterm not between 25 and 60;
select * from studentper where famsup is  null;
select * from studentper where famsup is  not null;
select * from studentper where mjob like 'C%';
select * from studentper where mjob like 'o%';
select * from studentper where mjob like '%r';
select * from studentper where mjob like '__s%';
select * from studentper where mjob like '_____';
#mysql join
select student_personal_information.sex,student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndterm, student_score.JS13rdTerm from student_personal_information inner join student_score on
student_personal_information.studentID=student_score.studentID;

select student_personal_information.sex,student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndterm, student_score.JS13rdTerm from student_personal_information inner join student_score on
student_personal_information.studentID=student_score.studentID;

select student_personal_information.sex,student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndterm, student_score.JS13rdTerm from student_personal_information right join student_score on
student_personal_information.studentID=student_score.studentID;

select student_personal_information.sex,student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndterm, student_score.JS13rdTerm from student_personal_information left join student_score on
student_personal_information.studentID=student_score.studentID;

select student_personal_information.sex,student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndterm, student_score.JS13rdTerm from student_personal_information cross join student_score on
student_personal_information.studentID=student_score.studentID;

use employee_system;
select avg(age) as result from hr_analytics;
#average age of employee
#no of employees that have left the company
#how many travel for business and how often
select distinct attrition from hr_analytics;
select attrition, count(attrition) as result from hr_analytics where attrition ='yes';
#average daily rate for employees
select * from hr_analytics;
select businesstravel, count(businesstravel) as result from hr_analytics group by businesstravel;
select avg(dailyrate) as result from hr_analytics;
#how many employees work in each deprtment
select department, count(department) as result from hr_analytics group by department;
#avgerage distance from home of employees
select avg(distancefromhome) as result from hr_analytics;
#how many employees have a certain level of education
select education, count(education) as result from hr_analytics group by education;
#popoluar field of education among employees
select educationfield, count(educationfield) as result from hr_analytics group by educationfield order by result DESC limit 1;
select educationfield, count(educationfield) as result from hr_analytics order by educationfield DESC limit 1;