create table product_order
(
    ORDER_ID     int auto_increment
        primary key,
    USER_ID      int          not null,
    PRODUCT_ID   int          not null,
    GWCOUNT      int          null,
    out_trade_no varchar(100) null
);

INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (1, 1, 1, 15, '202001');
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (2, 2, 3, 42, '202002');
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (3, 3, 4, 2, '202003');
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (4, 4, 4, 20, '202004');
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (5, 1, 2, 21, '202005');
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (6, 5, 1, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (7, 5, 2, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (8, 5, 3, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (9, 6, 2, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (10, 6, 5, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (11, 7, 1, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (12, 7, 2, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (13, 7, 5, null, null);
INSERT INTO testdb.product_order (ORDER_ID, USER_ID, PRODUCT_ID, GWCOUNT, out_trade_no) VALUES (14, 3, 1, null, null);