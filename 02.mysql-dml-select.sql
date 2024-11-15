-- DML SELECT
USE hrdb;
select user();
SELECT DATABASE(); -- 선택 된 DB 확인

-----------------
-- SELECT ~ FROM
-----------------
-- 테이블 구조 확인
DESCRIBE employees;
DESCRIBE departments;

-- 가장 기본적인 SELECT의 형태: 전체 데이터(모든 컬럼, 모든 레코드)
SELECT * FROM employees; -- 107 rows
SELECT * FROM departments; -- 27 rows
-- 테이블 내 정의 된 모든 컬럼을 Projection
-- 순서는 테이블을 작성 할 때 정의 한 순서를 따른다

-- 특정 컬럼만 선별 적으로 Projection 할 수 있다.
select first_name from employees;
select first_name, salary from employees;
-- Alias (별칭)
select first_name 이름, salary 월급 from employees;
select first_name AS 이름, salary as 월급 from employees;

select first_name, phone_number, hire_date, salary 
from employees;

select first_name, last_name, salary, phone_number, hire_date 
from employees;

-- 산술연산 : 기본적인 산술 연산을 사용 할 수 있다.
select 3.14159 * 10 * 10 from dual;
-- 특정 테이블이 아니라 데이터 베이스 자체에 문의 할 경우 DUAL
-- 특정 필드의 값을 수치로 산술 계산을 할 수 있음
select first_name, salary, salary * 12 AS 연봉
from employees;

-- null
-- 비어있는 데이터
-- 어떠 한 타입에서도 사용 할 수 있다alter
-- not null 컬럼, pk 컬럼에서는 사용 할 수 없다
select first_name, salary, salary * null from employees;
-- null이 포함 된 산술식의 결과는 항상 null
select salary, isnull(salary * null) from employees;
select salary, not isnull(salary * null) from employees;