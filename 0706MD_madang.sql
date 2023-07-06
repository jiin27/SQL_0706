select * from tabs;

/*Q1-1. 도서번호가 1인 도서의 이름은?*/
select bookname from book where bookid = 1;

/*Q1-2. 가격이 20,000원 이상인 도서의 이름은?*/
select bookname from book where price >= 20000;

/*Q1-3. 박지성의 총 구매액은?*/
select sum(o.saleprice)
    from customer c, orders o
    where c.custid = o.custid 
    and c.name='박지성';
    
/*Q1-4. 박지성이 구매한 도서의 수는?*/
select count(*)
    from customer c, orders o
    where c.custid=o.custid
    and c.name='박지성';
    
/*Q1-5. 박지성이 구매한 도서의 출판사 수*/
select count(distinct publisher)
    from customer c, orders o, book b
    where c.custid=o.custid
    and o.bookid=b.bookid
    and c.name='박지성';
    
/*Q1-6. 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이는?*/
select b.bookname, b.price, (b.price-o.saleprice) pricedifference
    from book b, orders o, customer c
    where b.bookid=o.bookid
    and o.custid=c.custid
    and c.name='박지성';
    
/*Q1-7. 박지성이 구매하지 않은 도서의 이름은?*/ ★★★
select b.bookname from book b
    where not exists
    (select b.bookname  from customer c, orders o
    where c.custid=o.custid
    and o.bookid=b.bookid
    and c.name =  '박지성');
    
/*Q2-1. 마당서점 도서의 총수*/
SELECT COUNT(*)
    FROM BOOK;
    
/*Q2-2. 마당서점에 도서를 출고하는 출판사의 총수*/
SELECT COUNT(DISTINCT PUBLISHER)
    FROM BOOK;
    
/*Q2-3. 모든 고객의 이름, 주소*/
SELECT NAME, ADDRESS FROM CUSTOMER;

/*Q2-4. 2014년 7월 4일~7월 7일 사이에 주문 받은 도서의 주문번호*/
SELECT ORDERID FROM ORDERS
    WHERE ORDERDATE BETWEEN '14/07/04' AND '14/07/07';
    
/*Q2-5. 2014년 7월 4일~7월 7일 사이에 주문받은 도서를 제외한 도서의 주문번호*/
SELECT ORDERID FROM ORDERS
    WHERE ORDERDATE NOT BETWEEN '14/07/04' AND '14/07/07';
    
/*Q2-6. 성이 '김' 씨인 고객의 이름과 주소*/
SELECT NAME, ADDRESS 
    FROM CUSTOMER
    WHERE NAME LIKE '김%';
    
/*Q2-7. 성이 '김' 씨이고 이름이 '아'로 끝나는 고객의 이름과 주소*/
SELECT NAME, ADDRESS 
    FROM CUSTOMER
    WHERE NAME LIKE '김%아';
