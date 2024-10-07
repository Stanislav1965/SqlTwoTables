-- �������� �������
CREATE TABLE ORDERS(
    id number not null,
    date_order date,
    customers_id number not null,
    product_name VARCHAR(100) not null,
    amount number,
    CONSTRAINT orders_pk PRIMARY KEY (id),
    CONSTRAINT fk_customers FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- ������� ������������������ ��� ������������ id  � ������� CUSTOMERS
create sequence orders_id start with 1 increment by 1 nocache;

-- ������� ������ � �������
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 1, '����', 10);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 1, '�������', 1);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 1, '�������', 2);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 2, '�������', 1);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 3, '������', 10);
commit;

