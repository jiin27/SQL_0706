
/*날짜 형식 바꾸기 to_char 함수*/
select  to_char(hiredate, 'yyyy-mm-dd')
from emp;

/* 데이터정의어DDL(Data Definition Language)_테이블 생성, 변경, 삭제*/

/*테이블 생성하기 CREATE*/
create table emp_ddl (
    empno number(4) not null,
    ename varchar2(10) not null,
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7, 2), /*전체 7자리, 소수점 2번째 자리까지 표현*/
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

/*열 추가하는 ALTER-ADD*/
ALTER TABLE EMP_ALTER
    ADD HP VARCHAR2(20);
    
SELECT * FROM EMP_ALTER;

/*열 이름을 변경하는 ALTER-RENAME COLUMN(꼭 명시)*/
ALTER TABLE EMP_ALTER
    RENAME COLUMN HP TO TEL;

SELECT * FROM EMP_ALTER;

/*열의 자료형을 변경하는 ALTER-MODIFY*/
ALTER TABLE EMP_ALTER
    MODIFY EMPNO NUMBER(5);

DESC EMP_ALTER;

/*특정 열 삭제 ALTER-DROP COLUMN(꼭 명시)*/
ALTER TABLE EMP_ALTER
    DROP COLUMN TEL;

SELECT * FROM EMP_ALTER;


/*테이블 이름 변경하기 RENAME TO*/
RENAME EMP_ALTER TO EMP_RENAME;

SELECT * FROM TABS;
