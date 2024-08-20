Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 5.7.44-log MySQL Community Server (GPL)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| holberton          |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> use holberton;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_holberton |
+---------------------+
| users               |
+---------------------+
1 row in set (0.00 sec)

mysql> create Table if not exists users(ID INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255));
Query OK, 0 rows affected, 1 warning (0.01 sec)


mysql> describe users;
+---------+----------------------+------+-----+---------+----------------+
| Field   | Type                 | Null | Key | Default | Extra          |
+---------+----------------------+------+-----+---------+----------------+
| ID      | int(11)              | NO   | PRI | NULL    | auto_increment |
| email   | varchar(255)         | NO   | UNI | NULL    |                |
| name    | varchar(255)         | YES  |     | NULL    |                |
| country | enum('US','CO','TN') | NO   |     | US      |                |
+---------+----------------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql>