select * from book order by price DESC, publisher ASC;
select * from orders;
select sum(saleprice) from orders;
select sum(saleprice)as 매출총액 from orders;
select * from book order by publisher desc;
select sum(saleprice)AS 총구매액 from orders where custid=2;
select custid, count(*) as 도서수량,sum(saleprice) as 총액 from orders group by custid;
select * from customer,orders where customer.custid=orders.custid;
select * from customer;
DROP TABLE Customer ;
CREATE TABLE  Customer (
  custid      NUMBER(2) PRIMARY KEY,  
  name        VARCHAR2(40),
  address     VARCHAR2(50),
  phone       VARCHAR2(20)
);
INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전',  NULL);
select * from customer;

select * from customer,orders where customer.custid=orders.custid;
select * from customer,orders where customer.custid=orders.custid order by customer.custid ;
select  name,saleprice from customer,orders where customer.custid=orders.custid;
-----------------------------여기부터 실습 문제 예제 STUDENT_TBL_15--------------------------------------------------------------------------------------
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
values('180001','박길동','A1','2000/10/01','1',1,'010-2222-3333','대구시 북구 복현동');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('180002','홍나라','A1','2000/02/10','2',1,'010-1111-2222','대구시 서구 내당동');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('180003','김정은','A2','2000/03/01','1',1,'010-4444-5555','경북 경산시 중산동');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('180004','최현우','A2','1999/02/02','2',2,'010-3333-4444','경북 경산시 중방동');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('170005','박지연','A1','1999/05/05','1',2,'010-5555-6666','대구시 수성구 사월동');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('170006','여은','A1','1999/04/15','1',2,'010-6666-7777','경북 경산시 옥산동');
insert into STUDENT_TBL_15(STUDENT_NO,STUDENT_NAME,CLASS_CODE,BIRTH_DATE,STUDENT_STATUS,STUDENT_GRADE,STUDNET_TEL,STUDENT_ADDR)
values('160007','강고을','A1','1998/08/18','1',3,'010-8888-9999','경북 경산시 옥곡동');

drop table student_tbl_15;
delete from  STUDENT_TBL_15;
select * from student_tbl_15;
-----------------------------여기부터 실습 문제 예제 SCORE_TBL_15--------------------------------------------------------------------------------------

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
                         values(2018,1,'180001','운영체제', 85, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','운영체제', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','운영체제', 70, 2);
insert into SCORE_TBL_15 values(2018,1,'180001','자바', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180002','자바', 80, 5);
insert into SCORE_TBL_15 values(2018,1,'180003','자바', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180001','JSP', 80, 3);
insert into SCORE_TBL_15 values(2018,1,'180002','JSP', 90, 3);
insert into SCORE_TBL_15 values(2018,1,'180003','JSP', 70, 3);
insert into SCORE_TBL_15 values(2018,1,'180001','HTML', 90, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','HTML', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','HTML', 100, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180002','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180003','PHP', 80, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','보안', 80, 3);
insert into SCORE_TBL_15 values(2018,2,'180002','보안', 90, 3);
insert into SCORE_TBL_15 values(2018,2,'180003','보안', 70, 3);
----------------------------- 여기서부터 다시 제작하기--------------------------------------------------------------
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
VALUES(180001,'박길동','A1','2000/10/01','1','1','010-2222-3333','대구시 북구 복현동');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180002,'홍나라','A1','2000/02/10','2','1','010-1111-2222','대구시 서구 내당동');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180003,'김정은','A2','2000/03/01','1','1','010-4444-5555','경북 경산시 중상동');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180004,'최현우','A2','1999/02/02','2','2','010-2333-4444','경북 경산시 중방동');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180005,'박지연','A1','1999/05/05','1','2','010-5555-6666','대구시 수성구 복현동');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180006,'은비','A1','1999/04/15','1','2','010-6666-7777','경북 경산시 옥산동');
insert into STUDENT_TBL_15(student_no,student_name,class_code,birth_date,student_status,student_grade,student_tel,student_addr)
VALUES(180007,'강고을','A1','1998/08/18','1','3','010-8888-9999','경북 경산시 옥곡동');

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
                         values(2018,1,'180001','운영체제', 85, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','운영체제', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','운영체제', 70, 2);
insert into SCORE_TBL_15 values(2018,1,'180001','자바', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180002','자바', 80, 5);
insert into SCORE_TBL_15 values(2018,1,'180003','자바', 60, 5);
insert into SCORE_TBL_15 values(2018,1,'180001','JSP', 80, 3);
insert into SCORE_TBL_15 values(2018,1,'180002','JSP', 90, 3);
insert into SCORE_TBL_15 values(2018,1,'180003','JSP', 70, 3);
insert into SCORE_TBL_15 values(2018,1,'180001','HTML', 90, 2);
insert into SCORE_TBL_15 values(2018,1,'180002','HTML', 95, 2);
insert into SCORE_TBL_15 values(2018,1,'180003','HTML', 100, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180002','PHP', 90, 2);
insert into SCORE_TBL_15 values(2018,2,'180003','PHP', 80, 2);
insert into SCORE_TBL_15 values(2018,2,'180001','보안', 80, 3);
insert into SCORE_TBL_15 values(2018,2,'180002','보안', 90, 3);
insert into SCORE_TBL_15 values(2018,2,'180003','보안', 70, 3);

SELECT SUM (SCORE) FROM SCORE_TBL_15;-----더하기-----
SELECT AVG (SCORE) FROM SCORE_TBL_15;-----평균-------
SELECT MIN (SCORE) FROM SCORE_TBL_15;-----최소-------
SELECT MAX (SCORE) FROM SCORE_TBL_15;-----최대-------

 select * from SCORE_TBL_15 order by SCORE DESC;------내림차순-----
 select * from SCORE_TBL_15 order by SCORE ASC;-------오름차순-----
 
 select  SCORE_TERM, count(*) as 완료한팀,sum(SCORE) as 총점수 from SCORE_TBL_15 group by SCORE_TERM;-----GROUP BY----
select * from SCORE_TBL_15,STUDENT_TBL_15 where SCORE_TBL_15.student_no=STUDENT_TBL_15.student_no;-----JOIN-----
 