DROP DATABASE IF EXISTS bestValues;

CREATE DATABASE bestValues;

USE bestValues;

CREATE TABLE `cool staff`(

`ID` INT(8) NOT NULL AUTO_INCREMENT,
`GROUPNAME` VARCHAR(50) NOT NULL DEFAULT '0',
`COOLTEXT` VARCHAR(2000) NOT NULL DEFAULT '0',
PRIMARY KEY (`ID`))

COLLATE='UTF8_GENERAL_CI';

INSERT INTO `cool staff`(`ID`,`GROUPNAME`,`COOLTEXT`)
VALUES
(1,"libs add","import java.util.Scanner;"),
(2,"Типы данных","int целые числа диапозона -3 миллиардов 147 миллионов до модуля этих миллиардов"),
(307,"Git","Fork вилка, брать вилкой к себе в тарелку. Копировать репозиторий себе в репозитории."),
(4,"Data types","Double values, world after the dot. 323 signs after the dot possible.");