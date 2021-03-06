-- 이름: demo_madang.sql
-- 설명
-- madang 스키마를 생성하고 MADANG 서점 실습테이블과 데이터를 입력한다.
-- 본스크립트는 system 계정에서 실행해야한다.
--
-- SQLPlus 실행방법
-- SQL>@demo_madang.sql

-- SQL Developer에서 실행하려면
-- system 계정으로 접속하여 스크립트를 conn madang/madang; 문장까지 실행한다.

-------------------------------------------------------------------------------------------------------------------
-- [system 계정에서 - Oracle 11g, 12c 경우] - madang 계정 생성
DROP USER madang CASCADE; -- 확인 필요?
CREATE USER madang IDENTIFIED BY madang DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp PROFILE DEFAULT;
GRANT CONNECT, RESOURCE TO madang;
GRANT CREATE VIEW, CREATE SYNONYM TO madang;
GRANT UNLIMITED TABLESPACE TO madang;
ALTER USER madang ACCOUNT UNLOCK;

-- [system 계정에서 - Oracle 18c 경우] - madang 계정 생성
-- Oracle 18g는 사용자 이름에 c##을 붙이고, GRANT UNLIMITED 명령을 추가하여야함.....
DROP USER c##madang CASCADE; -- 확인 필요?
CREATE USER c##madang IDENTIFIED BY madang DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp PROFILE DEFAULT;
GRANT CONNECT, RESOURCE TO c##madang;
GRANT CREATE VIEW, CREATE SYNONYM TO c##madang;
GRANT UNLIMITED TABLESPACE TO c##madang;
ALTER USER c##madang ACCOUNT UNLOCK;



-------------------------------------------------------------------------------------------------------------------
-- [madang 계정에서] -- 여기서 부터는 madang 계정으로 접속한다.
-- conn madang/madang; 

-- 처음 실행시는 아래 4문장의 오류는 무시한다.  
DROP TABLE Orders ;
DROP TABLE Book ;
DROP TABLE Customer ;
DROP TABLE Imported_Book ; 

CREATE TABLE Book (
  bookid      NUMBER(2) PRIMARY KEY,
  bookname    VARCHAR2(40),
  publisher   VARCHAR2(40),
  price       NUMBER(8) 
);

CREATE TABLE  Customer (
  custid      NUMBER(2) PRIMARY KEY,  
  name        VARCHAR2(40),
  address     VARCHAR2(50),
  phone       VARCHAR2(20)
);


CREATE TABLE Orders (
  orderid NUMBER(2) PRIMARY KEY,
  custid  NUMBER(2) REFERENCES Customer(custid),
  bookid  NUMBER(2) REFERENCES Book(bookid),
  saleprice NUMBER(8) ,
  orderdate DATE
);
-- Book, Customer, Orders 데이터 생성
INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO Book VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO Book VALUES(6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전',  NULL);

-- 주문(Orders) 테이블의 책값은 할인 판매를 가정함
INSERT INTO Orders VALUES (1, 1, 1, 6000, TO_DATE('2014-07-01','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (2, 1, 3, 21000, TO_DATE('2014-07-03','yyyy-mm-dd'));
INSERT INTO Orders VALUES (3, 2, 5, 8000, TO_DATE('2014-07-03','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (4, 3, 6, 6000, TO_DATE('2014-07-04','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (5, 4, 7, 20000, TO_DATE('2014-07-05','yyyy-mm-dd'));
INSERT INTO Orders VALUES (6, 1, 2, 12000, TO_DATE('2014-07-07','yyyy-mm-dd'));
INSERT INTO Orders VALUES (7, 4, 8, 13000, TO_DATE( '2014-07-07','yyyy-mm-dd'));
INSERT INTO Orders VALUES (8, 3, 10, 12000, TO_DATE('2014-07-08','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (9, 2, 10, 7000, TO_DATE('2014-07-09','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (10, 3, 8, 13000, TO_DATE('2014-07-10','yyyy-mm-dd'));

-- 여기는 3장에서 사용되는 Imported_book 테이블

CREATE TABLE Imported_Book (
  bookid      NUMBER ,
  bookname    VARCHAR(40),
  publisher   VARCHAR(40),
  price       NUMBER(8) 
);
INSERT INTO Imported_Book VALUES(21, 'Zen Golf', 'Pearson', 12000);
INSERT INTO Imported_Book VALUES(22, 'Soccer Skills', 'Human Kinetics', 15000);

COMMIT;
-- EXIT

-----------------------------------------------------------------------------------------------------------------
--여기서부터 내가 함.
select phone          
from customer          
where name='김연아';
-----------------------------------------------------------------------------------------------------------------
select bookname,publisher,price
from book
where price >= 10000;
-----------------------------------------------------------------------------------------------------------------
 select *
 from book;
 -----------------------------------------------------------------------------------------------------------------
 select bookname,price
 from book;
 -----------------------------------------------------------------------------------------------------------------
select price,bookname
from book;
 -----------------------------------------------------------------------------------------------------------------
--여기서 부터 예제 실습
select *
from book;
 ---------------------------------------------------------------------------------------------------------------
select *
from orders;
 -----------------------------------------------------------------------------------------------------------------
select *
from customer;
 -----------------------------------------------------------------------------------------------------------------
select bookid, bookname, publisher, price
from book;
 -----------------------------------------------------------------------------------------------------------------
select *
from book;
 -----------------------------------------------------------------------------------------------------------------
select  publisher
from book;
 -----------------------------------------------------------------------------------------------------------------

select distinct publisher
from book;
 -----------------------------------------------------------------------------------------------------------------
select *
from book
where price<20000;