create database myshop;

drop table custom;
commit;
use myshop;
create table custom(
	cusId varchar(20) primary key,
	cusPw varchar(1000) not null,
	cusName	varchar(50) not null,
	address	varchar(100) not null,
	tel varchar(100),	
	regDate	datetime default now(),
	point int default 0,		
	level int default 0,
	visited int default 0
    );

insert into custom (cusid, cuspw, cusname, address, tel) values('admin','12345','관리자','관리자','000-0000-0000');
delete from custom where cusid = 'admin';
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
insert into notice(title, content, author) values ("테스트2","테스트2내용","dmin");
insert into notice(title, content, author) values ("테스트3","테스트3내용","dmin");
insert into notice(title, content, author) values ("테스트4","테스트4내용","dmin");
insert into notice(title, content, author) values ("테스트5","테스트5내용","dmin");
commit;


select * from notice order by notiNo desc;