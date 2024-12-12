--11장 퀴즈
--7. emp 테이블과 동일한 emp06 테이블 만들기
create table emp06 as select * from emp;
select * from emp06;

--8. 과장들의 최소 급여보다 많은 급여를 받는 직원의 이름과 급여와 직급 검색하기
select ename, sal, job from emp06 where sal > any (select sal from emp06 where job = '과장');   

--9. 인천에 위치한 부서에 소속된 직원들의 급여를 100인상하는 쿼리문 작성하기
select * from emp;
select * from dept;
update emp06 set sal = sal + 100  where deptno = ( select deptno from dept where loc = '인천'); 

--10.경리부에 소속된 사원들만 삭제하는 쿼리문 작성하기
delete from emp06 where deptno = ( select deptno from dept02 where dname = '경리부');

--이후부터 emp 테이블 이용하기
--11. '이문세'와 같은 부서에서 근무하느 사원의 이름과 부서 번호를 출력하기
select ename, deptno from emp where deptno = (select deptno from emp where ename = '이문세') and ename <> '이문세';

--12. '이문세'와 동일한 직급을 가진 직원 출력하기
select * from emp where job = (select job from emp where ename = '이문세') and ename <> '이문세';

--13. 이문세 급여와 동일하거나 더 많이 받는 직원의 이름과 급여 검색하기
select ename, sal from emp where sal > (select sal from emp where ename = '이문세'); 

--14. 인천에서 근무하는 직원의 이름, 부서번호 검색하기
select ename, deptno from emp where deptno = (select deptno from dept where loc = '인천');

--15. 직속상관이 감우성인 직원의 이음과 급여 검색하기
select * from emp;
select ename,sal, mgr from emp where mgr = ( select empno from emp where ename = '감우성');  

--16. 부서별로 가장 급열르 많이 받는 직원의 번호, 이름, 급여, 부서번호 검색하기
select empno, ename, sal, deptno from emp  where sal in (select max(sal) from emp group by deptno)order by deptno;

select empno, ename, sal, deptno from emp  where (deptno,sal) in (select deptno,max(sal) from emp group by deptno)order by deptno;

select empno, ename, sal, deptno from emp e where sal = (select max(sal) from emp where deptno = e.deptno )order by deptno;

--17. 직급이 과장인 직원이 속한 부서의 부서번호, 부서명, 지역 검색하기
select deptno,dname,loc from dept where deptno in (select deptno from emp where job='과장');

--18.모든 과장보다 급여를 많이 받는 직원들의 이름과 급여, 직급 검색하기 단, 과장은 출력하지 않는다.
select ename, sal, job from emp where sal > (select max(sal) from emp where job = '과장');  


