-- 2021.10.29

desc dual;
select * from dual;

-- 함수: 단일행 함수, 집합 함수

-- 단일행 함수: 숫자, 문자, 날짜, 변환

-- 숫자 함수
select abs(-15.5) from dual;
select FLOOR(35.73) "Floor" FROM DUAL;
select round(15.393) from dual;
select round(15.393, 2) from dual;
select round(15.393, -1) from dual;
select round(15.6789) from dual;
select round(15.6789, 2) from dual;
select round(15.6789, -1) from dual;
select mod(10, 3) from dual;

-- 문자 함수
select LOWER('MR. SCOTT MCMILLAN') "Lowercase" from dual;
select ename, lower(ename) from emp;
select concat('저는 ', '손흥민입니다.') from dual;
select ename || ' is a' from emp;
select concat('나의 이름은 ', ename) from emp;
select LPAD('Page 1',15,'*') from dual; -- *********Page 1
select RPAD('Page 1',15,'*') from dual;
select rpad('001111-3', 14, '*') from dual;

select SUBSTR('ABCDEFG',3,4) from dual;
select SUBSTR('001212-3001234', 1, 8) from dual;
select substr(hiredate, 1, 2) from emp;

select rpad(SUBSTR('001212-3001234', 1, 8), 14,'*') from dual;
select rpad(substr(name,1,2),5,'*') from customer;
select * from customer;

select Ltrim('     =from=     ') from dual;
select Rtrim('     =from=     ') from dual;

select trim('+' from '+++++from+++++') as a from dual;
select trim(' ' from '     +++++from+++++     ') as a from dual;

select REPLACE('JACK and JUE','J','BL') from dual;
select replace('000-0000-0000', '-', '') from dual;


-- 날짜 함수
select sysdate from dual;
select sysdate-30 from dual;
select add_months(sysdate, 4) from dual;
select last_day(sysdate+10) from dual; -- 10월 29일에 10일을 더하면 11월이고 11월의 마지막 날 출력


-- 변환 함수
-- 날짜 -> 문자: to_char(원본, 패턴) -> 패턴은 출력 패턴을 의미
select to_char(sysdate, 'YYYY.MM.DD. day dy AM PM HH HH24:MI:ss') from dual;
-- 2021.10.29. 13:00
select to_char(sysdate, 'YYYY.MM.DD. HH24:MI') from dual;

-- 숫자 -> 문자: to_char(원본, 패턴)
select to_char(100000, '0000000') from dual;

-- 문자 -> 날짜: to_date(원본, 패턴)
select to_date('2021/10/29', 'YYYY/MM/DD') from dual;
select to_date('2021.10.25.', 'YYYY.MM.DD.') from dual;

select hiredate, to_char(hiredate, 'YYYY.MM.DD') from emp;

--2021.01.01~오늘 현재
select trunc(sysdate - to_date('2021-01-01', 'YYYY.MM.DD')) from dual;

select to_char(100000,'0,000,000') from dual;
--                     0100000
select to_char(100000,'9,999,999') from dual;

select to_char(100000.123,'L9,999,999.9') from dual;

select sal, to_char(sal*1200, 'L9,999,999') from emp;

-- 문자 -> 숫자 to_number(원본, 패턴)
select to_number('100,000', '9,999,999') + 100000 from dual;

-- sxitch case와 유사한 decode 함수
-- emp 테이블에서 사원 이름, 부서번호ㅡ 부서이름 출력
select * from dept;
select * from emp;
select ename, deptno,
       decode(deptno,
           10, 'ACCOUNT',
           20, 'RESERACH',
           30, 'SALES',
           40, 'OPERATION'
       ) as dname
from emp
;

-- 직급에 따라 급여를 인상
-- 직급이 'ANALYST'인 사원은 5%,
--       'SALESMAN'인 사원은 10%,
--       'MANAGER'인 사원은 15%,
--       'CLERK'인 사원은 20% 인상
select ename, job, sal,
        decode(job, 
             'ANALYST', sal*1.05,
             'SALESMAN', sal*1.1,
             'MANAGER', sal*1.15,
             'CLERK', sal*1.2
             ) as upSal
from emp
;

-- case when then: if else if 와 유사 -> 조건식을 = 이외의 비교 연산을 할 수 있다.
select ename, sal
case
when sal > = 3000 then sal*1.1
when sal < 3000 then sal*2
end as upsal
from emp
;

------------------------------------------------------------------
-- 집합 함수 (그룹 함수)
-- 하나의 행의 컬럼이 대상이 아니고, 행 그룹의 컬럼들(집합)이 대상
------------------------------------------------------------------

select to_char(sum(sal)*1200, 'L999,999,999) as "월 급여 총액",
to_char(round(avg(sal)*1200), 'L999,999,999) as "월 급여 평균",
count(*) as "총 사원의 수",
count(comm) as "커미션 등록 수"
sum(comm) as "커미션 합",
avg(comm) as "커미션 평균",
max(sal) as "가장 높은 급여",
min(sal) as "가장 낮은 급여"
from emp
;

// 사원들의 업무의 개수
select job from emp;

select deptno,
coutn(*) as "사원 수",
sum(sal) as "급여 총합",
trunc(avg(sal)) as "급여 평균",
max(sal) as "최대 급여",
min(sal) as "최소 급여",
count(comm) as "커미션 대상자 수"
nvl(sum(comm), 0) as "커미션 총합",
nvl(avg(comm), 0) as "커미션 평균"

from emp
-- where deptno != 20
group by deptno
-- having avg sal >= 2000
having max(sal) > 2900
order by deptno
;
