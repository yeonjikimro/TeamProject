create user 'swap'@'host' identified by '!Korea8080';
drop user 'swap'@'localhost';
create database swap;
create user 'swap'@'localhost'
identified by '!Korea8080'; 
grant all privileges on swap.*
to 'swap'@'localhost';