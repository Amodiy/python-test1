create database J_waec_system;
use J_waec_system;
#MYSQL CLAUSE
select sex, age, address from studentper order by age;
select sex, age, address from studentper order by age desc;
select distinct age from studentper;
select distinct age from studentper order by age;
#groupby clause works with aggregate function[avg, min, max, count, sum, first, last]

select Mjob, avg(JS11stterm) from studentper group by Mjob;
select Mjob, min(JS11stterm) from studentper group by Mjob;
select Mjob, max(JS11stterm) from studentper group by Mjob;
select Mjob, count(JS11stterm) from studentper group by Mjob;
select Mjob, sum(JS11stterm) from studentper group by Mjob;
select * from studentper limit 2;
select * from studentper order by age desc limit 2;
#mysql control flow program
select age, sex, JS11stterm, if(JS11stterm >=90, 'Yes', 'No') as result from studentper;
select age, sex, JS11stterm, JS12ndterm, ifnull(JS11stterm, JS12ndterm) as result from studentper;
select age, sex, JS11stterm, JS12ndterm, nullif(JS11stterm, JS12ndterm) as result from studentper;
select age, sex, famsize, address, JS32ndterm,
      case
          when JS32ndterm >= 70 and JS32ndterm <= 100 then 'A'
          when JS32ndterm >= 60 and JS32ndterm <= 69.99 then 'B'
          when JS32ndterm >= 50 and JS32ndterm <= 59.99 then 'C'
          when JS32ndterm >= 40 and JS32ndterm <= 49.99 then 'D'
          when JS32ndterm >= 30 and JS32ndterm <= 39.99 then 'E'
          else 'F'
      end as GRADE from studentper;
      create table student_personal_information select sex,age,address,famsize,Pstatus,Medu,Fedu,Mjob,Fjob,guardian from studentper;
      create table student_activities_table select traveltime,studytime,paid,health,activities,Emotions,famsup,schoolsup,internet from studentper;
      create table student_score select JS11stterm,JS12ndterm,'JS13rd Term',JS21stTerm,JS22ndTerm,JS23rdTerm,JS31stTerm,JS32ndTerm from studentper;
      
      select * from student_activities_table;