select * from tabs;

/*Q1-1. ������ȣ�� 1�� ������ �̸���?*/
select bookname from book where bookid = 1;

/*Q1-2. ������ 20,000�� �̻��� ������ �̸���?*/
select bookname from book where price >= 20000;

/*Q1-3. �������� �� ���ž���?*/
select sum(o.saleprice)
    from customer c, orders o
    where c.custid = o.custid 
    and c.name='������';
    
/*Q1-4. �������� ������ ������ ����?*/
select count(*)
    from customer c, orders o
    where c.custid=o.custid
    and c.name='������';
    
/*Q1-5. �������� ������ ������ ���ǻ� ��*/
select count(distinct publisher)
    from customer c, orders o, book b
    where c.custid=o.custid
    and o.bookid=b.bookid
    and c.name='������';
    
/*Q1-6. �������� ������ ������ �̸�, ����, ������ �ǸŰ����� ���̴�?*/
select b.bookname, b.price, (b.price-o.saleprice) pricedifference
    from book b, orders o, customer c
    where b.bookid=o.bookid
    and o.custid=c.custid
    and c.name='������';
    
/*Q1-7. �������� �������� ���� ������ �̸���?*/ �ڡڡ�
select b.bookname from book b
    where not exists
    (select b.bookname  from customer c, orders o
    where c.custid=o.custid
    and o.bookid=b.bookid
    and c.name =  '������');
    
/*Q2-1. ���缭�� ������ �Ѽ�*/
SELECT COUNT(*)
    FROM BOOK;
    
/*Q2-2. ���缭���� ������ ����ϴ� ���ǻ��� �Ѽ�*/
SELECT COUNT(DISTINCT PUBLISHER)
    FROM BOOK;
    
/*Q2-3. ��� ���� �̸�, �ּ�*/
SELECT NAME, ADDRESS FROM CUSTOMER;

/*Q2-4. 2014�� 7�� 4��~7�� 7�� ���̿� �ֹ� ���� ������ �ֹ���ȣ*/
SELECT ORDERID FROM ORDERS
    WHERE ORDERDATE BETWEEN '14/07/04' AND '14/07/07';
    
/*Q2-5. 2014�� 7�� 4��~7�� 7�� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ*/
SELECT ORDERID FROM ORDERS
    WHERE ORDERDATE NOT BETWEEN '14/07/04' AND '14/07/07';
    
/*Q2-6. ���� '��' ���� ���� �̸��� �ּ�*/
SELECT NAME, ADDRESS 
    FROM CUSTOMER
    WHERE NAME LIKE '��%';
    
/*Q2-7. ���� '��' ���̰� �̸��� '��'�� ������ ���� �̸��� �ּ�*/
SELECT NAME, ADDRESS 
    FROM CUSTOMER
    WHERE NAME LIKE '��%��';
