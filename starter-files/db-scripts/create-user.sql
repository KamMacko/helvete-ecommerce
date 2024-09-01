CREATE USER 'helveteapp'@'localhost' IDENTIFIED BY 'helveteapp';

GRANT ALL PRIVILEGES ON * . * TO 'helveteapp'@'localhost';

ALTER USER 'helveteapp'@'localhost' IDENTIFIED WITH mysql_native_password BY 'helveteapp';