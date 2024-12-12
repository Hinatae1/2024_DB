--7 테이블 구조를 생성, 변경, 제거하는 DDL
--테이블 구조를 만드는 create table문
--사원 정볼르 저장하기 위한 테이블 생성
create table emp01(
    empno number(4),
    ename varchar2(14),
    sal number(7, 3)
);

desc emp01;

--테이블 구조를 변경하는 alter table문
--컬럼 추가
alter table emp01 add(birth date);

--컬럼 변경
alter table emp01 modify ename varchar2(30);

desc emp01;

--컬럼 제거
alter table emp01 drop column ename;

--set unused
alter table emp01 set unused (sal);

alter table emp01 drop unused columns;

desc emp01;

--테이블 명을 변경하는 rename문
rename emp01 to emp02;

--테이블 구조를 제거하는 drop table문
--모든 데이터를 제거하는 truncate table문
drop table emp02;

desc emp02;

--7장 미션
--1. 
create table dept_mission(
    DNO number(2),
    DNAME varchar2(14),
    LOC varchar2(13)
    );
desc dept_mission;

--2.
create table emp_mission(
    ENO number(4),
    ENAME varchar2(10),
    DNO number(2)
    );
desc emp_mission;

--3.
alter table emp_mission modify ENAME varchar2(25);
desc emp_mission;

--4.
drop table emp_mission;
desc emp_mission;

--5.
alter table dept_mission drop column DNAME;
desc dept_mission;

--6.
alter table dept_mission set unused (LOC);
desc dept_mission;

--7.
alter table dept_mission drop unused columns;
desc dept_mission;

--8.dept_mission을 deptartment란 이름으로 변경
rename dept_mission to deptartment;
desc dept_mission;
desc deptartment;

--퀴즈

