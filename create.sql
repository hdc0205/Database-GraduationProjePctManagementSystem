--本科毕业设计管理系统
create database gradpro
go
use gradpro

create table D
( 院系号 varchar(2) not null primary key,
  名称 char(10) not null,
  地址 char(16) not null,
  联系电话 varchar(8) not null)
insert into D values('01','计算机学院','上大东校区三号楼','65347567')
insert into D values('02','通讯学院','上大东校区二号楼','65341234')
insert into D values('03','材料学院','上大东校区四号楼','65347890')
insert into D values('04','生命学院','上大东校区一号楼','65347765')
insert into D values('05','机自学院','上大东校区五号楼','65347683')

create table T
( 工号 varchar(8) not null primary key,
  姓名 varchar(10) not null,
  性别 varchar(2) not null check(性别='男' or 性别='女'),
  出生日期 datetime not null check(出生日期 between '1900-01-01' and '1999-12-31'),
  职称 char(6) not null check(职称 in('讲师','副教授','教授')),
  院系号 varchar(2) not null references D(院系号))
insert into T values('10001001','陈迪茂','男','1973-03-06','副教授','01')
insert into T values('10001002','马小红','女','1972-12-08','讲师','01')
insert into T values('10002001','张心颖','女','1960-01-05','教授','02')
insert into T values('10001003','吴宝钢','男','1980-11-06','讲师','01')
insert into T values('10003001','张三','男','1979-10-29','副教授','03')
insert into T values('10004001','李四','女','1976-03-06','教授','04')
insert into T values('10005001','王五','男','1977-02-05','讲师','05')

create table S
( 学号 varchar(8) not null primary key,
  姓名 varchar(10) not null,
  性别 varchar(2) not null,
  项目名称 varchar(30) not null,
  工号 varchar(8) not null references T(工号),
  提交时间 datetime not null,
  手机号码 char(11) not null,
  院系号 varchar(2) not null references D(院系号)
)
insert into S values('18120001','李明','男','基于小提琴选曲判断工资水平','10002001','2020-03-06','13613005466','02')
insert into S values('18120002','刘晓明','男','基于大数据的视频分析','10001001','2020-12-08','18913457890','01')
insert into S values('18120003','张颖','女','超算系统的自主开发可能性研究','10001002','2020-01-05','18826490423','01')
insert into S values('18120004','刘晶晶','女','国际形势的走势与干涉','10001003','2020-11-06','13331934111','01')
insert into S values('18120005','刘成刚','男','论第三次世界爆发的可能性','10003001','2020-06-07','18015872567','03')
insert into S values('18120006','李二丽','女','基于SQL的毕业设计系统开发','10003001','2020-05-04','18107620945','03')
insert into S values('18120007','张晓峰','男','战后修复生态系统','10004001','2020-08-16','13912341078','04')
create index idx1 on S(院系号 asc,姓名 desc)

