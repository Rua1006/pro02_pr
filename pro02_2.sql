use myshop;

create table custom(
	cusId varchar(13) primary key,	
	cusPw varchar(200) not null,
	cusName varchar(50) not null,
	address varchar(500) not null,
	tel varchar(14) not null,
	regDate datetime default now(),
	point int default 0,
	level int default 0,
	visited int default 0
);
select*from custom;
create table notice(
	notiNo int primary key auto_increment,
	title varchar(200) not null,
	content varchar(1000) not null,
	author varchar(20) not null,
	resDate datetime default now()
);
desc notice;
alter table notice add column visited int default 0;


create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);
select*from category;
insert into category(cateName) values ("사료");
insert into category(cateName) values ("디저트");
insert into category(cateName) values ("건식");
insert into category(cateName) values ("습식");
commit;

create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);
select*from product;

create table wearing(
	proNo int primary key,
    amount int
);

create table sales(
	saleNo int primary key auto_increment,
    cusId varchar(13) not null,
    proNo int not null,
    amount int not null,
    saleDate datetime default now(),
    parselNo int,
    salePayNo int
);

drop table sales;
select * from sales;

create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);

create table parsel(
	parselNo int primary key auto_increment,
    parselAddr varchar(500),
    cusTel varchar(14),
    parselCompany varchar(50),
    parselTel varchar(14),
    parselState int default 0,
    baleCode varchar(24)
);
 desc parsel;
drop table parsel;
select * from parsel;


create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(13)
);
drop table cart;

create table qnaa(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resdate datetime default now(),
    lev int default 0,            
    parno int not null,          
    sec char(1)                     
);
select * from qnaa;

alter table qnaa add column visited int default 0; 
select * from sales;

desc product;
alter table product add column regdate datetime default now();
alter table product add column scnt int default 0;

-- 최근 올라온 4위까지 
select * from product order by regdate desc limit 4;
-- 조회수 상위 4위까지
select * from product order by scnt desc limit 4;
-- 많이 팔린 상품 4위까지
select * from product where prono in (select*from (select prono from sales group by prono order by sum(amount) desc limit 4) as tot);

commit;
