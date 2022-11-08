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

create table notice(
	notiNo int primary key auto_increment,
	title varchar(200) not null,
	content varchar(1000) not null,
	author varchar(20) not null,
	resDate datetime default now()
);

alter table notice add column visited int default 0;


create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);

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

create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(13)
);

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

commit;
