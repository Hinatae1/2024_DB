--10장 조인
--이문세의 부서명 구하기
select * from emp where ename='이문세';

select * from dept;

--Cross Join - 1:1 대응
select * from emp,dept;

--Equi Join
select * from emp,dept where emp.deptno = dept.deptno;

select ename,dname,d.deptno from emp e,dept d where e.deptno = d.deptno and e.ename='이문세';

--Non-Equo Join
select * from salgrade;

--직원들의 급여 등급 구하기
select e.ename, e.sal, s.grade 급여등급 from emp e, salgrade s where e.sal between losal and hisal order by 3;

select e.ename, e.sal, s.grade 급여등급 from emp e, salgrade s where e.sal >= s.losal and e.sal <= s.hisal order by 3;

--직원 이름, 급여, 급여등급, 부서명 검색하기
select e.ename, e.sal, s.grade,d.dname from emp e, salgrade s, dept d where e.sal between s.losal and s.hisal and e.deptno = d.deptno and e.ename = '이문세';

--self Join
select * from emp;

select e.ename 직원, m.ename 직속상관 from emp e, emp m where e.mgr = m.empno order by e.empno;

--ANSI(미국표준연구소) Join
--ANSI Cross Join 
select * from emp cross join dept;

--ANSI Inner Join
select e.ename, d.dname, d.deptno from emp e join dept d on e.deptno = d.deptno where e.ename='이문세';

select e.ename, e.sal, s.grade,d.dname from emp e join salgrade s on e.sal between s.losal and s.hisal join dept d on e.deptno = d.deptno where e.ename = '이문세';

--ANSI Outer Join
select e.ename 직원, m.ename 직속상관 from emp e left outer join  emp m on e.mgr = m.empno order by e.empno;


--미션
--1. 경리부에서 근무하는 사원의 이름과 입사일 검색
select * from emp;
select e.ename,to_char(e.hiredate, 'YYYY/MM/DD') 입사일 from emp e, dept d where e.deptno = d.deptno and d.dname ='경리부'; 

--2. 인천에서 근무하는 사원의 이름과 급여 검색
select e.ename, e.sal from emp e inner join dept d on e.deptno = d.deptno and d.loc='인천';                                                                                                                                                                  


