
/*��¥ ���� �ٲٱ� to_char �Լ�*/
select  to_char(hiredate, 'yyyy-mm-dd')
from emp;

/* ���������Ǿ�DDL(Data Definition Language)_���̺� ����, ����, ����*/

/*���̺� �����ϱ� CREATE*/
create table emp_ddl (
    empno number(4) not null,
    ename varchar2(10) not null,
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7, 2), /*��ü 7�ڸ�, �Ҽ��� 2��° �ڸ����� ǥ��*/
    comm number(7, 2),
    deptno number(2)
);

DESC EMP_DDL;

CREATE TABLE DEPT_DDL
    AS SELECT * FROM DEPT;

DESC DEPT_DDL;

SELECT * FROM DEPT_DDL; 

CREATE TABLE EMP_DDL_30
    AS SELECT * 
        FROM EMP
    WHERE DEPTNO = 30;
    
SELECT * FROM EMP_DDL_30

CREATE TABLE EMPDEPT_DDL
    AS SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE,
        E.SAL, E.COMM, D.DEPTNO, D.DNAME, D.LOC
    FROM EMP E, DEPT D
    WHERE 1<>1;

SELECT * FROM EMPDEPT_DDL;

CREATE TABLE EMP_ALTER
    AS SELECT * FROM EMP;

SELECT * FROM EMP_ALTER;

/*�� �߰��ϴ� ALTER-ADD*/
ALTER TABLE EMP_ALTER
    ADD HP VARCHAR2(20);
    
SELECT * FROM EMP_ALTER;

/*�� �̸��� �����ϴ� ALTER-RENAME COLUMN(�� ���)*/
ALTER TABLE EMP_ALTER
    RENAME COLUMN HP TO TEL;

SELECT * FROM EMP_ALTER;

/*���� �ڷ����� �����ϴ� ALTER-MODIFY*/
ALTER TABLE EMP_ALTER
    MODIFY EMPNO NUMBER(5);

DESC EMP_ALTER;

/*Ư�� �� ���� ALTER-DROP COLUMN(�� ���)*/
ALTER TABLE EMP_ALTER
    DROP COLUMN TEL;

SELECT * FROM EMP_ALTER;


/*���̺� �̸� �����ϱ� RENAME TO*/
RENAME EMP_ALTER TO EMP_RENAME;

SELECT * FROM TABS;
