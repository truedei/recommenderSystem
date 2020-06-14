create table member_user
(
    USER_ID   int(10) auto_increment
        primary key,
    USER_NAME varchar(20) null
)
    engine = MyISAM
    charset = utf8;

INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (1, '郑成功');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (2, '小红');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (7, '小李');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (19, '郑晖');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (10, '张三');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (11, '二龙湖浩哥');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (12, '张三炮');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (13, '赵四');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (14, '刘能');
INSERT INTO testdb.member_user (USER_ID, USER_NAME) VALUES (15, '刘能逗');