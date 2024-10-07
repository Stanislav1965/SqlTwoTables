-- создадим таблицу
CREATE TABLE CUSTOMERS(
    id number not null,
    name VARCHAR(100),
    surname VARCHAR(100),
    age number(3),
    phone_number VARCHAR(20),
    CONSTRAINT customers_pk PRIMARY KEY (id)
);

-- создаем последовательность для формирования id  в таблице CUSTOMERS
create sequence customers_id start with 1 increment by 1 nocache;

-- вставим данные в таблицу
INSERT INTO CUSTOMERS (id, name, surname, age, phone_number) VALUES(customers_id.nextval,'Alexey', 'Turner', 24, '911 221-12-12');
INSERT INTO CUSTOMERS (id, name, surname, age, phone_number) VALUES(customers_id.nextval,'Michael', 'Dooley', 40, '921 740-77-77');
INSERT INTO CUSTOMERS (id, name, surname, age, phone_number) VALUES(customers_id.nextval,'Sabrina', 'Spellman', 19, '911 555-01-17');
commit;
