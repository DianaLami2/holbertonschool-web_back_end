Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 5.7.44-log MySQL Community Server (GPL)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> showdatabases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'showdatabases' at line 1
mysql> showdatabases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'showdatabases' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> create database holberton;
Query OK, 1 row affected (0.00 sec)

mysql> use holberton;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create Table if not exists users(ID INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255));
Query OK, 0 rows affected (0.04 sec)

mysql> drop Tables users;
Query OK, 0 rows affected (0.01 sec)

mysql> create Table if not exists users(ID INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255), name VARCHAR(255));
ERROR 1060 (42S21): Duplicate column name 'name'
mysql> create Table if not exists users(ID INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255));
Query OK, 0 rows affected (0.04 sec)

mysql> DESCRIBE USERS;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| ID    | int(11)      | NO   | PRI | NULL    | auto_increment |
| email | varchar(255) | NO   | UNI | NULL    |                |
| name  | varchar(255) | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql>