select * from book order by price DESC, publisher ASC;
select * from orders;
select sum(saleprice) from orders;
select sum(saleprice)as �����Ѿ� from orders;
select * from book order by publisher desc;
select sum(saleprice)AS �ѱ��ž� from orders where custid=2;
select custid, count(*) as ��������,sum(saleprice) as �Ѿ� from orders group by custid;
select * from customer,orders where customer.custid=orders.custid;
select * from customer;
DROP TABLE Customer ;
CREATE TABLE  Customer (
  custid      NUMBER(2) PRIMARY KEY,  
  name        VARCHAR2(40),
  address     VARCHAR2(50),
  phone       VARCHAR2(20)
);
INSERT INTO Customer VALUES (1, '������', '���� ��ü��Ÿ', '000-5000-0001');
INSERT INTO Customer VALUES (2, '�迬��', '���ѹα� ����', '000-6000-0001');  
INSERT INTO Customer VALUES (3, '��̶�', '���ѹα� ������', '000-7000-0001');
INSERT INTO Customer VALUES (4, '�߽ż�', '�̱� Ŭ������', '000-8000-0001');
INSERT INTO Customer VALUES (5, '�ڼ���', '���ѹα� ����',  NULL);
select * from customer;

select * from customer,orders where customer.custid=orders.custid;
select * from customer,orders where customer.custid=orders.custid order by customer.custid ;
select  name,saleprice from customer,orders where customer.custid=orders.custid;
-----------------------------������� �ǽ� ���� ���� STUDENT_TBL_15--------------------------------------------------------------------------------------
create table STUDENT_TBL_15(
STUDENT_NO CHAR(6) primary key,
STUDENT_NAME VARCHAR2(50),
CLASS_CODE CHAR(2),
BIRTH_DATE DATE,
STUDENT_STATUS CHAR(1),
STUDENT_GRADE NUMBER(1),
STUDNET_TEL VARCHAR2(13),
STUDENT_ADDR VARCHAR2(100) );

insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('180001','�ڱ浿','A1','2000/10/01','1',1,'010-2222-3333','�뱸�� �ϱ� ������');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('180002','ȫ����','A1','2000/02/10','2',1,'010-1111-2222','�뱸�� ���� ���絿');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('180003','������','A2','2000/03/01','1',1,'010-4444-5555','��� ���� �߻굿');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('180004','������','A2','1999/02/02','2',2,'010-3333-4444','��� ���� �߹浿');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('170005','������','A1','1999/05/05','1',2,'010-5555-6666','�뱸�� ������ �����');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('170006','����','A1','1999/04/15','1',2,'010-6666-7777','��� ���� ���굿');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('160007','������','A1','1998/08/18','1',3,'010-8888-9999','��� ���� ���');

drop table student_tbl_15;
delete from  STUDENT_TBL_15;
select * from student_tbl_15;
-----------------------------������� �ǽ� ���� ���� SCORE_TBL_15--------------------------------------------------------------------------------------

SELECT * FROM  SCORE_TBL_15;
drop table SCORE_TBL_15;

create table SCORE_TBL_15(
SCORE_YEAR NUMBER ,
SCORE_TERM NUMBER,
STUDENT_NO CHAR(6),
SUBJECT_NAME VARCHAR2(40),
SCORE NUMBER,
SCORE_UNIT NUMBER,
primary key (SCORE_YEAR,SCORE_TERM,STUDENT_NO,SUBJECT_NAME));

delete from SCORE_TBL_15;

insert into SCORE_TBL_15 (SCORE_YEAR,SCORE_TERM,STUDENT_NO,SUBJECT_NAME,SCORE,SCORE_UNIT)
                         values(2018,1,'180001','�ü��', 85, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','�ü��', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','�ü��', 70, 2);
insert into SCORE_TBL_15 values(2018,1,'180001','�ڹ�', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180002','�ڹ�', 80, 5);
insert into SCORE_TBL_15 values(2018,1,'180003','�ڹ�', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180001','JSP', 80, 3);
insert into SCORE_TBL_15 values(2018,1,'180002','JSP', 90, 3);
insert into SCORE_TBL_15 values(2018,1,'180003','JSP', 70, 3);
insert into SCORE_TBL_15 values(2018,1,'180001','HTML', 90, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','HTML', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','HTML', 100, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180002','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180003','PHP', 80, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','����', 80, 3);
insert into SCORE_TBL_15 values(2018,2,'180002','����', 90, 3);
insert into SCORE_TBL_15 values(2018,2,'180003','����', 70, 3);
----------------------------- ���⼭���� �ٽ� �����ϱ�--------------------------------------------------------------
select * from STUDENT_TBL_15;
create table STUDENT_TBL_15(
student_no char(6) not null PRIMARY key,
student_name varchar(50),
class_code char(2),
birth_date date,
student_status char(1),
student_grade number(1),
student_tel varchar2(13),
student_addr  varchar2(100)
);
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180001,'�ڱ浿','A1','2000/10/01','1','1','010-2222-3333','�뱸�� �ϱ� ������');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180002,'ȫ����','A1','2000/02/10','2','1','010-1111-2222','�뱸�� ���� ���絿');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180003,'������','A2','2000/03/01','1','1','010-4444-5555','��� ���� �߻�');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180004,'������','A2','1999/02/02','2','2','010-2333-4444','��� ���� �߹浿');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180005,'������','A1','1999/05/05','1','2','010-5555-6666','�뱸�� ������ ������');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180006,'����','A1','1999/04/15','1','2','010-6666-7777','��� ���� ���굿');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180007,'������','A1','1998/08/18','1','3','010-8888-9999','��� ���� ���');

SELECT * FROM  SCORE_TBL_15;
drop table SCORE_TBL_15;

create table SCORE_TBL_15(
SCORE_YEAR NUMBER ,
SCORE_TERM NUMBER,
STUDENT_NO CHAR(6),
SUBJECT_NAME VARCHAR2(40),
SCORE NUMBER,
SCORE_UNIT NUMBER,
primary key (SCORE_YEAR,SCORE_TERM,STUDENT_NO,SUBJECT_NAME));

insert into SCORE_TBL_15 (SCORE_YEAR,SCORE_TERM,STUDENT_NO,SUBJECT_NAME,SCORE,SCORE_UNIT)
                         values(2018,1,'180001','�ü��', 85, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','�ü��', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','�ü��', 70, 2);
insert into SCORE_TBL_15 values(2018,1,'180001','�ڹ�', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180002','�ڹ�', 80, 5);
insert into SCORE_TBL_15 values(2018,1,'180003','�ڹ�', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180001','JSP', 80, 3);
insert into SCORE_TBL_15 values(2018,1,'180002','JSP', 90, 3);
insert into SCORE_TBL_15 values(2018,1,'180003','JSP', 70, 3);
insert into SCORE_TBL_15 values(2018,1,'180001','HTML', 90, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','HTML', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','HTML', 100, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180002','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180003','PHP', 80, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','����', 80, 3);
insert into SCORE_TBL_15 values(2018,2,'180002','����', 90, 3);
insert into SCORE_TBL_15 values(2018,2,'180003','����', 70, 3);

SELECT SUM (SCORE) FROM SCORE_TBL_15;-----���ϱ�-----
SELECT AVG (SCORE) FROM SCORE_TBL_15;-----���-------
SELECT MIN (SCORE) FROM SCORE_TBL_15;-----�ּ�-------
SELECT MAX (SCORE) FROM SCORE_TBL_15;-----�ִ�-------

 select * from SCORE_TBL_15 order by SCORE DESC;------��������-----
 select * from SCORE_TBL_15 order by SCORE ASC;-------��������-----
 
 select  SCORE_TERM, count(*) as �Ϸ�����,sum(SCORE) as ������ from SCORE_TBL_15 group by SCORE_TERM;-----GROUP BY----
select * from SCORE_TBL_15,STUDENT_TBL_15 where SCORE_TBL_15.student_no=STUDENT_TBL_15.student_no;-----JOIN-----
 