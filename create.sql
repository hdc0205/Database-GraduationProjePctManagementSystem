--���Ʊ�ҵ��ƹ���ϵͳ
create database gradpro
go
use gradpro

create table D
( Ժϵ�� varchar(2) not null primary key,
  ���� char(10) not null,
  ��ַ char(16) not null,
  ��ϵ�绰 varchar(8) not null)
insert into D values('01','�����ѧԺ','�ϴ�У������¥','65347567')
insert into D values('02','ͨѶѧԺ','�ϴ�У������¥','65341234')
insert into D values('03','����ѧԺ','�ϴ�У���ĺ�¥','65347890')
insert into D values('04','����ѧԺ','�ϴ�У��һ��¥','65347765')
insert into D values('05','����ѧԺ','�ϴ�У�����¥','65347683')

create table T
( ���� varchar(8) not null primary key,
  ���� varchar(10) not null,
  �Ա� varchar(2) not null check(�Ա�='��' or �Ա�='Ů'),
  �������� datetime not null check(�������� between '1900-01-01' and '1999-12-31'),
  ְ�� char(6) not null check(ְ�� in('��ʦ','������','����')),
  Ժϵ�� varchar(2) not null references D(Ժϵ��))
insert into T values('10001001','�µ�ï','��','1973-03-06','������','01')
insert into T values('10001002','��С��','Ů','1972-12-08','��ʦ','01')
insert into T values('10002001','����ӱ','Ů','1960-01-05','����','02')
insert into T values('10001003','�ⱦ��','��','1980-11-06','��ʦ','01')
insert into T values('10003001','����','��','1979-10-29','������','03')
insert into T values('10004001','����','Ů','1976-03-06','����','04')
insert into T values('10005001','����','��','1977-02-05','��ʦ','05')

create table S
( ѧ�� varchar(8) not null primary key,
  ���� varchar(10) not null,
  �Ա� varchar(2) not null,
  ��Ŀ���� varchar(30) not null,
  ���� varchar(8) not null references T(����),
  �ύʱ�� datetime not null,
  �ֻ����� char(11) not null,
  Ժϵ�� varchar(2) not null references D(Ժϵ��)
)
insert into S values('18120001','����','��','����С����ѡ���жϹ���ˮƽ','10002001','2020-03-06','13613005466','02')
insert into S values('18120002','������','��','���ڴ����ݵ���Ƶ����','10001001','2020-12-08','18913457890','01')
insert into S values('18120003','��ӱ','Ů','����ϵͳ�����������������о�','10001002','2020-01-05','18826490423','01')
insert into S values('18120004','������','Ů','�������Ƶ����������','10001003','2020-11-06','13331934111','01')
insert into S values('18120005','���ɸ�','��','�۵��������籬���Ŀ�����','10003001','2020-06-07','18015872567','03')
insert into S values('18120006','�����','Ů','����SQL�ı�ҵ���ϵͳ����','10003001','2020-05-04','18107620945','03')
insert into S values('18120007','������','��','ս���޸���̬ϵͳ','10004001','2020-08-16','13912341078','04')
create index idx1 on S(Ժϵ�� asc,���� desc)

