-- MS SQL program

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = ' mylogindata')
BEGIN
    CREATE DATABASE mylogindata ;
END
GO
  USE mylogindata;
GO
	

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'accounts') 
Begin
	CREATE TABLE accounts (
	 id int IDENTITY(1,5) PRIMARY KEY,
	 username varchar(50) NOT NULL,
	 password varchar(255) NOT NULL,
	 email varchar(100) NOT NULL)
End

SET IDENTITY_INSERT accounts ON
INSERT INTO accounts (id, username, password, email) VALUES (1, 'test', 'test', 'test@test.com');
SET IDENTITY_INSERT accounts OFF

Select * from accounts

INSERT INTO accounts (username, password, email) VALUES ( 'test2', 'test2', 'test2@test.com');
INSERT INTO accounts (username, password, email) VALUES ('test3', 'test3', 'test3@test.com');

UPDATE accounts
SET username = 'test4', password= 'test4', email= 'test4@test.com'
WHERE ID = 9;

Drop table accounts;


-- My sql program

/*CREATE DATABASE IF NOT EXISTS `nodelogin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `nodelogin`;

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES (1, 'test', 'test', 'test@test.com');*/