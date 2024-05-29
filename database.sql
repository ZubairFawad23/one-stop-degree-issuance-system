create database dbproject
use dbproject


create table students
(
	roll_no varchar(50) PRIMARY KEY,
	Stname varchar(50) not null,
	Stnumber varchar(50),
	Stcnic varchar (50), check(datalength(Stcnic)>=11),
	StFathersname varchar(50),
	Spassw varchar(50) check(datalength(Spassw)>= 8)
);


create table FEE
(
	FID int Primary key,
	Outstanding decimal,
	Roll_no varchar(50)  foreign key references students(Roll_no)
);

create table Cource
(
	CID int primary key,
	CName char(50),
	Sem_Number int check(Sem_Number <=14), -- maxinum semesters can be 14
	Grade char check(Grade = 'A' OR Grade = 'B' or Grade = 'C' or Grade = 'D' or Grade = 'E' or Grade = 'F'),
	Credit_Hours int, 
	Roll_no varchar(50) foreign key references students(Roll_no)
);


------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------- Users----------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
create table Finance_Faculty
(
	FUserName varchar(50) primary key,
	FName varchar(50),
	FPass varchar(50) check(datalength(FPass) >= 8)
);

create table OneStopAdmin
(
	OSA_UserName varchar(50) primary key,
	OSA_Name varchar(50),
	OSA_Pass varchar(50) check(datalength(OSA_Pass) >= 8)
);

create table Director
(
	DUserName varchar(50) primary key,
	DName varchar(50),
	DPass varchar(50) check(datalength(DPass) >= 8)
);

create table FYP_Faculty
(
	FYP_UserName varchar(50) primary key,
	FYP_Name varchar(50),
	FYP_Pass varchar(50) check(datalength(FYP_Pass) >= 8)
);



--////////////////////////// REQUEST

--////////////////////////// REQUEST

CREATE TABLE Requests
(
	roll_no varchar(50),
	stname varchar(50),
	degree varchar(50),
	number varchar(50),
	address varchar(50),
	status varchar(50),
	request_id int IDENTITY(1,1) Primary key,
	req_time DateTime,
	comp_time DateTime,
	token int
);
drop user i200550
alter table Requests add foreign key (roll_no) references students(roll_no);

create table FYP_Request
(
	roll_no varchar(50) foreign key references Students(roll_no),
	FYP_Time DateTime,
	FYP_Remarks varchar(50),
	FYP_Status varchar(50),
	request_id int IDENTITY(1,1) Primary key,
	Time_diff varchar(50)
	
);

create table Finance
(
	roll_no varchar(50) foreign key references Students(roll_no),
	Finance_Time DateTime,
	Finance_Remarks varchar(50),
	Finance_Status varchar(50),
	request_id int IDENTITY(1,1) Primary key	
);


-- //////////////////////// ADDING DATA
insert into students values('i200550','Ateeb Ahmed','1234', '33106565160', 'abd', 'alex1234')
insert into students values('i201826','Saad Khan','51353', '331024546545', 'Tariq Ayub','ccdscde4')
insert into students values('i200836','Maria Saeed','651', '331245561160', 'Tariq Saeed','gg1502gg')
insert into students values('i201755','Zubair Fawad','6265', '03215135155', 'Saad','motayyyyy')



insert into Director values('zohaib123','Zohaib Adnan','zohaib2022')
insert into OneStopAdmin values('ahmad123','Ahmad Khan','ahm12344')

insert into FYP_Faculty values('fypuser1','Ali Sohail','alex5678')

insert into Finance_Faculty values('finnuser','Malik Taha','xcvv1234')

insert into fee values(4,0.0,'i200550')



insert into Cource values(1,'Database',1,'A',3,'i201755')
insert into Cource values(4,'Pakistan Studies',1,'A',3,'i201755')
insert into Cource values(2,'Islamiyat',1,'C',3,'i201755')
insert into Cource values(3,'Management',1,'B',1,'i201755')
insert into Cource values(5,'Algorithms',1,'A',1,'i201755')



insert into fee values(3,10000.0,'i201826')



create role student
revoke select,insert,update,delete on schema::dbo to student
grant insert on Requests to student
grant insert on FYP_Request to student
grant insert on Finance to student
grant update on students to student


create role FYP_department
revoke select,insert,update,delete on schema::dbo to Fyp_department
grant update on Fyp_Request to FYP_department

create role Finance_department
revoke select,insert,update,delete on schema::dbo to Finance_department
grant update on Finance to Finance_department
grant insert,select,update,delete on FEE to Finance_department

create role One_Stop_Admin
revoke select,insert,update,delete on schema::dbo to One_Stop_Admin
grant select,insert,update,delete on requests to One_Stop_Admin

create role Director
revoke select,insert,update,delete on schema::dbo to Director
grant select on requests to Director
grant select on FYP_Request to Director
grant select on Finance to Director

USE [master]

create procedure terminate
as
DECLARE @kill varchar(8000) = '';  
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), req_spid) + ';'  
FROM master.dbo.syslockinfo
WHERE rsc_type = 2
AND rsc_dbid  = db_id('dbproject')

EXEC(@kill);

select * from requests


