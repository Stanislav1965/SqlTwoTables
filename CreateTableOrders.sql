-- создадим таблицу
CREATE TABLE ORDERS(
    id number not null,
    date_order date,
    customers_id number not null,
    product_name VARCHAR(100) not null,
    amount number,
    CONSTRAINT orders_pk PRIMARY KEY (id),
    CONSTRAINT fk_customers FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- создаем последовательность для формирования id  в таблице CUSTOMERS
create sequence orders_id start with 1 increment by 1 nocache;

-- вставим данные в таблицу
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 1, 'Мыло', 10);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 1, 'Мочалка', 1);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 1, 'Шампунь', 2);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 2, 'Порошок', 1);
INSERT INTO ORDERS (id, date_order, customers_id, product_name, amount) VALUES(orders_id.nextval, trunc(sysdate), 3, 'Тряпка', 10);
commit;

