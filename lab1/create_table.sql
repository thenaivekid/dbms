connect DBMS_BCT;
create table student( 
id integer primary key auto_increment,
name varchar(40) not null,
roll integer,
address varchar(40) not null,
marks_obtained integer,
gender enum('Male', 'Female'),
age integer
);
