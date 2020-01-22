
SELECT * 
FROM lprod;

SELECT buyer_id, buyer_name
FROM buyer;

SELECT *
FROM cart;

SELECT mem_id, mem_pass, mem_name
FROM member;


    
FROM users;

--���̺��� � �÷��� �ִ��� Ȯ���ϴ� ���
-- 1. select *
-- 2. TOOL�� ��� (�����-TABLES)
-- 3. DESC ���̺�� (desc-describe)

DESC USERS;

-- ���� ���̺��� ID, name, reg_dt �÷��� ��ȸ�ϴ� sql �� �ۼ�

SELECT userid, usernm, reg_dt
FROM users;

-- ��¥���� (reg_dt �÷��� date������ ���� �� �ִ� Ÿ��)
-- sql��¥�÷� +(���ϱ⿬��)
-- �������� ��Ģ������ �ƴѰ͵� (5+5)
-- SQL���� ���ǵ� ��¥ ���� : ��¥ + ���� = ��¥���� ������ ���ڷ� ����Ͽ� ���� ��¥�� �ȴ�. (2019/01/28 + 5 = 2019/02/02) 
-- null : ���� �𸣴� ����
-- null�� ���� ���� ����� �׻� null
SELECT userid u_id, usernm u_name, reg_dt, 
       reg_dt + 5 reg_dt_after_5date
FROM users;

SELECT prod_id id, prod_name name
FROM prod;

SELECT lprod_gu gu, lprod_nm nm
FROM lprod;

SELECT buyer_id ���̾���̵�, buyer_name �̸�
FROM buyer;

--���ڿ� ����
--�ڹ� ���� ���ڿ� ���� : + ("Hello" + "world")
--SQL������ : || ('Hello'||'World')
--SQL������ : concat('Hello', 'World')


-- userid, usernm �÷��� ����, ��Ī id_name

SELECT userid || usernm id_name
FROM users;

SELECT userid || usernm id_name,

       CONCAT(userid, usernm) concat_id_name
FROM users;
--SQL������ ������ ����(Į���� ����� ����, PL/SQL ���� ������ ����)
--SQL���� ���ڿ� ����� �̱� �����̼����� ǥ��
--"HELLO, WORLD" => 'HELLO, WORLD'
--���ڿ� ����� �÷����� ����
SELECT 'user id : ' || userid AS "user id"
FROM users;

DESC USER_TABLES;

SELECT TABLE_NAME , CONCAT(CONCAT('SELECT * FROM ', table_name), ';') QUERY
FROM user_tables;

-- if( a == 5 ) (a�� ���� 5���� ��)
-- sql������ ������ ������ ����(PL/SQL)

SELECT *
FROM users
WHERE userid = 'brown';

SELECT *
FROM users
WHERE userid != 'brown';

--emp ���̺� �����ϴ� �÷��� Ȯ�� �غ�����

DESC emp;

SELECT *
FROM emp;

--emp ���̺��� ename �÷����� JONES�� �ุ ��ȸ
SELECT *
FROM emp
WHERE ename = 'JONES';

SELECT *
FROM emp
WHERE ename != 'JONES';

SELECT *
FROM emp; --employee

-- emp���̺��� deptno(�μ���ȣ)�� 30���� ũ�ų� ���� ����鸸 ��ȸ

SELECT *
FROM emp 
WHERE deptno >= 30;

-- ���ڿ� : '���ڿ�'
-- ���� : 50
-- ��¥ : ??? --> �Լ��� ���ڿ��� �����Ͽ� ǥ��
--       ���ڿ��� �̿��Ͽ� ǥ�� ����(�������� ����)
--       �������� ��¥ ǥ�� ���
--       �ѱ� : �⵵4�ڸ�-��2�ڸ�-����2�ڸ�
--       �̱� : ��2�ڸ�-����2�ڸ�-�⵵4�ڸ�
-- �Ի����ڰ� 1980�� 12�� 17�� ������ ��ȸ


--TO_DATE���ڿ��� dateŸ������ �����ϴ� �Լ�
--TO_DATE(��¥���� ���ڿ�, ù��° ������ ����)
-- '1980/02/03'
SELECT *
FROM emp
WHERE hiredate = TO_DATE('19801217', 'YYYYMMDD');

-- ��������
SELECT *
FROM emp
WHERE sal >= 1000
AND   sal <= 2000;

-- ���� �����ڸ� �ε�ȣ ��ſ� BETWEEN AND �����ڷ� ��ü
SELECT *
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '19820101' AND '19830101';







