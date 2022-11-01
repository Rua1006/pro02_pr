create database myshop;

drop table custom;
commit;
use myshop;
create table custom(
	cusId varchar(20) primary key,
	cusPw varchar(30) not null,
	cusName	varchar(50) not null,
	address	varchar(100) not null,
	tel int(30),	
	regDate	datetime default now(),
	point int default 0,		
	level int default 0,
	visited int default 0
    );

desc table custom;
select * from custom;

create table notice(
	notiNo int primary key auto_increment,
	title varchar(100) not null,
	content varchar(2000) not null,
	author varchar(20) not null,
	resDate datetime default now()
);

desc table notice;
select * from notice;

insert into notice(title, content, author) values ("테스트1","테스트1내용","dmin");