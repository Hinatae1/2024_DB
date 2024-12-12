--10장 퀴즈

--11. 사원이름, 부서번호,부서명 검색하기
select *from emp;
select *from dept;
select e.ename,d.deptno,d.dname from emp e join dept d on e.deptno = d.deptno order by 2;
--12. 경리부 부서 소속 직원의 이름과 입사일 검색하기
select e.ename, e.hiredate from emp e join dept d on e.deptno = d.deptno and d.dname = '경리부';
--13. 직급이 과장인 직원의 이름, 부서명 검색하기
select e.ename, d.dname from emp e join dept d on e.deptno = d.deptno and e.job = '과장';
--14. 직송상관이 감우성인 직원들의 이름과 직급 검색하기
select work.ename, work.job from emp work join emp manager on work.mgr = manager.empno where manager.ename = '감우성';
--15. 감우성과 동일한 근무지에서 근무하는 직원의 이름 검색하기
select work.ename, friend.ename from emp work join emp friend on work.deptno = friend.deptno where work.ename = '감우성' and friend.ename <> '감우성';