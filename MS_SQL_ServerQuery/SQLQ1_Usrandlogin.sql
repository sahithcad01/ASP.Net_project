use cad_sss;

create table sss_usr_reg(
sno int not null  primary key identity(1,1),
 Usr_Name varchar(100),
 First_Name varchar(100) not null, 
 Last_Name varchar(100),  
 DOB date not null,
 Gender varchar(10) not null,
 Qualification varchar(100) not null,
 Location varchar(255) not null,
 Phone_no bigint not null,
 Email varchar(255) not null,
 Usr_Address varchar(255),
 Password varchar(15) not null,
 confirm_Password varchar(15) not null,
 created_by varchar(100) not null,
 created_on datetime);
 
select * from sss_usr_reg;

drop table sss_usr_login;

create table sss_usr_login(
 sno int not null primary key,
 username varchar(100) not null,
 password varchar(15) not null,
 old_password varchar(15),
 new_password varchar(15),
 foreign key (sno) references sss_usr_reg(sno)
 );
 

select * from sss_usr_login;


set identity_insert sss_usr_reg on;

insert into sss_usr_reg(sno
      ,Usr_Name
      ,First_Name
      ,Last_Name
      ,DOB
      ,Gender
      ,Qualification
      ,Location
      ,Phone_no
      ,Email
      ,Usr_Address
      ,Password
      ,confirm_Password
      ,created_by
      ,created_on) 
	  values('1', 'sahithcad01@gmail.com', 'Sahith', 'Afridi', '2001-02-19', 'Male', 'B.E.', 'Dindigul', '9042314497', 'sahithcad01@gmail.com', 'No.7, 1st Floor, Gokulam Colony, Kajamalai, Tiruchirapalli -620023', 'Password@123', 'Password@123', 'Sahith',GETDATE());


set identity_insert sss_usr_reg off ;
INSERT INTO sss_usr_reg (Usr_Name
      ,First_Name
      ,Last_Name
      ,DOB
      ,Gender
      ,Qualification
      ,Location
      ,Phone_no
      ,Email
      ,Usr_Address
      ,Password
      ,confirm_Password
      ,created_by
      ,created_on)
	  VALUES ('ramkicad01@gmail.com', 'Ramki', 'S','2001-12-02','Male', 'B.E.','Trichy','9125289563', 'ramkicad01@gmail.com', 'Uraiyur,Trichy',  'ramki123', 'ramki123', 'Ramki', GETDATE()),
	  ('sanjaycad01@gmail.com','Sanjay', 'B','2001-10-20','Male', 'B.E.','Trichy','9129846464', 'sanjaycad01@gmail.com', 'Srirangam,Trichy',  'Pass@123', 'Pass@123', 'Sanjay', GETDATE());