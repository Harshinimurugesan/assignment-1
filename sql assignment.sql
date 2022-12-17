create table record(sno int,name varchar(20),salary int,bonus int);
insert into record(sno,name,salary,bonus)values(1,'harshini',40000,5400);
insert into record(sno,name,salary,bonus)values(2,'sujana',30000,3000);
insert into record(sno,name,salary,bonus)values(3,'sanjana',12000,2600);
insert into record(sno,name,salary,bonus)values(4,'sivaranjan',25000,1500);
insert into record(sno,name,salary,bonus)values(5,'poorna',50000,2345);
insert into record(sno,name,salary,bonus)values(6,'akaash',60000,2000);
insert into record(sno,name,salary,bonus)values(7,'malaravan',34000,1670);
insert into record(sno,name,salary,bonus)values(8,'mashoor',40000,5757);

select *from record

#min and max

select max(sno)
from record
where salary<=25000;

select min(sno)
from record
where salary<=25000;


#avg

select avg(salary)from record;


#count

select count (salary)from record;

#sum

select sum(salary)from record;

#and operation

select *from record where name='akaash'and salary=60000;

#or operation

select *from record where name='harshini'OR salary=40000;

#ADDING COLUMN

ALTER TABLE record add leavecount float;

#drop column

alter table record drop column leavecount;



#create another table

create table record1(sno int,name varchar(20),salary int,bonus int);
insert into record1(sno,name,salary,bonus)values(1,'keerthi',32000,4000);
insert into record1(sno,name,salary,bonus)values(2,'ajay',27000,1500);
insert into record1(sno,name,salary,bonus)values(3,'karthik',25000,0);
insert into record1(sno,name,salary,bonus)values(4,'isha',36000,2000);
insert into record1(sno,name,salary,bonus)values(5,'varsha',45000,5000);
insert into record1(sno,name,salary,bonus)values(6,'abi',39000,4000);
insert into record1(sno,name,salary,bonus)values(7,'hema',47000,1500);
insert into record1(sno,name,salary,bonus)values(8,'yahavi',41000,3000);

select *from record1

#inner join

select record.name, record.salary,record.bonus,record1.name,record1.salary,record1.bonus
from record
inner join record1
on record.bonus =record1.bonus;


#full join

select record.name, record.salary,record.bonus,record1.name,record1.salary,record1.bonus
from record
full join record1
on record.bonus = record1.bonus;


#left join

select record.name, record.salary,record.bonus,record1.name,record1.salary,record1.bonus
from record
left join record1 
on record.bonus = record1.bonus;

#right join

select record.name, record.salary,record.bonus,record1.name,record1.salary,record1.bonus
from record
right join record1
on record.bonus= record1.bonus;


#left outer join

select record.name, record.salary,record.bonus,record1.name,record1.salary,record1.bonus
from record
left outer join record1
on record.bonus = record1.bonus;


#right outer join

select record.name, record.salary,record.bonus,record1.name,record1.salary,record1.bonus
from record
right outer join record1
on record.bonus = record1.bonus;


#full outer join

select record.name, record.salary,record.bonus,record1.name,record1.salary,record1.bonus
from record
full outer join record1
on record.bonus =record1.bonus;


#desc

select *from record  order by bonus desc;

#asc

select *from record order by bonus asc;