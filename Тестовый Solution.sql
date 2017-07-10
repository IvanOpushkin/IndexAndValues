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
(4,"Data types","Double values, world after the dot. 323 signs after the dot possible."),
(5,"String Format","System.out.printf(кавычка%.2fкавычка, dablvalue); вывод двух знаков даблы после запятой"),(6,"Links memory","Всё в джаве ссылки даже нулевые созданные объекты, т.к они занимают ячейку в памяти."),
(7,"Project Folders","src главная папка компиляции Java кода, идентифицируется как Java типо гитхуб идентификатора файла, только встроенно. Путь указывается в начале файла через package Projects.Март30;"),
(8,"Project Folders","Название файла не указывается в пути package п.8 т.к это и есть имя класса Java (думаю читается кодо ридером автоматом имя файла имя класса)"),
(3,"IOS","Scanner vvod = new Scanner(System.in); while (vvod.hasNextInt()) {int a = vvod.NextInt(); do smth} работает похоже на итератор также есть hasNextLine(); hasNextDouble(); any value"),
(9,"Recursive","(ORIGINAL) recursive 3 parts (1st Thread.sleep(1000); 2nd условие выхода хм return 3rd сама рекурсия)");