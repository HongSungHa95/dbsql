
SELECT * 
FROM lprod;

SELECT buyer_id, buyer_name
FROM buyer;

SELECT *
FROM cart;

SELECT mem_id, mem_pass, mem_name
FROM member;


    
FROM users;

--테이블의 어떤 컬럼이 있는지 확인하는 방법
-- 1. select *
-- 2. TOOL의 기능 (사용자-TABLES)
-- 3. DESC 테이블명 (desc-describe)

DESC USERS;

-- 유저 테이블에서 ID, name, reg_dt 컬럼만 조회하는 sql 문 작성

SELECT userid, usernm, reg_dt
FROM users;

-- 날짜연산 (reg_dt 컬럼은 date정보를 담을 수 있는 타입)
-- sql날짜컬럼 +(더하기연산)
-- 수학적인 사칙연산이 아닌것들 (5+5)
-- SQL에서 정의된 날짜 연산 : 날짜 + 정수 = 날짜에서 정수를 일자로 취급하여 더한 날짜가 된다. (2019/01/28 + 5 = 2019/02/02) 
-- null : 값을 모르는 상태
-- null에 대한 연산 결과는 항상 null
SELECT userid u_id, usernm u_name, reg_dt, 
       reg_dt + 5 reg_dt_after_5date
FROM users;

SELECT prod_id id, prod_name name
FROM prod;

SELECT lprod_gu gu, lprod_nm nm
FROM lprod;

SELECT buyer_id 바이어아이디, buyer_name 이름
FROM buyer;

--문자열 결합
--자바 언어에서 문자열 결합 : + ("Hello" + "world")
--SQL에서는 : || ('Hello'||'World')
--SQL에서는 : concat('Hello', 'World')


-- userid, usernm 컬럼을 결합, 별칭 id_name

SELECT userid || usernm id_name
FROM users;

SELECT userid || usernm id_name,

       CONCAT(userid, usernm) concat_id_name
FROM users;
--SQL에서의 변수는 없음(칼럼이 비슷한 역할, PL/SQL 변수 개념이 존재)
--SQL에서 문자열 상수는 싱글 쿼테이션으로 표현
--"HELLO, WORLD" => 'HELLO, WORLD'
--문자열 상수와 컬럼간의 결합
SELECT 'user id : ' || userid AS "user id"
FROM users;

DESC USER_TABLES;

SELECT TABLE_NAME , CONCAT(CONCAT('SELECT * FROM ', table_name), ';') QUERY
FROM user_tables;

-- if( a == 5 ) (a의 값이 5인지 비교)
-- sql에서는 대입의 개념이 없다(PL/SQL)

SELECT *
FROM users
WHERE userid = 'brown';

SELECT *
FROM users
WHERE userid != 'brown';

--emp 테이블에 존재하는 컬럼을 확인 해보세요

DESC emp;

SELECT *
FROM emp;

--emp 테이블에서 ename 컬럼값이 JONES인 행만 조회
SELECT *
FROM emp
WHERE ename = 'JONES';

SELECT *
FROM emp
WHERE ename != 'JONES';

SELECT *
FROM emp; --employee

-- emp테이블에서 deptno(부서번호)가 30보자 크거나 같은 사원들만 조회

SELECT *
FROM emp 
WHERE deptno >= 30;

-- 문자열 : '문자열'
-- 숫자 : 50
-- 날짜 : ??? --> 함수랑 문자열을 결합하여 표현
--       문자열만 이용하여 표현 가능(권장하진 않음)
--       국가별로 날짜 표기 방법
--       한국 : 년도4자리-월2자리-일자2자리
--       미국 : 월2자리-일자2자리-년도4자리
-- 입사일자가 1980년 12월 17일 직원만 조회


--TO_DATE문자열을 date타입으로 변경하는 함수
--TO_DATE(날짜형식 문자열, 첫번째 인자의 형식)
-- '1980/02/03'
SELECT *
FROM emp
WHERE hiredate = TO_DATE('19801217', 'YYYYMMDD');

-- 범위연산
SELECT *
FROM emp
WHERE sal >= 1000
AND   sal <= 2000;

-- 범위 연산자를 부등호 대신에 BETWEEN AND 연산자로 대체
SELECT *
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '19820101' AND '19830101';







