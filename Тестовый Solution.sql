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
(53,"Data types","Short короткий int в пределах -+40 тысяч. Float меньший Double в два раза."),
(54,"Data types","Default значение в Jave для мира за запятой Double, чтобы это изменить в конце чисел пишут f d для соответствующего типа"),
(55,"Data types","Decimal type или проблема съедания денег типом Даблы и других. Тк нужно 2 знака за запятой, а не перевод кусочков в 3 - 4 знак. Для денег только Decimal"),
(56,"Data types","Если данные идут через нижнее подчёркивание в инициализации типо int a = 1_000_000; это просто миллион и всё"),
(57,"Data types","byte secret cycle world - конвертация любых чисел в байт пускает их в цикл -128 to 127 infinite gap"),
(58,"Interesting Facts","++value сначала увеличивает переменную на 1, а потом возвращает значение, в то время как с value++ наоборо. Возврат затем увеличение."),
(59,"Data types","0b перед числом означает его бинарность например в виде пункта 56 0b1111_0000"),
(55,"Data operations","Деление на char, делит автоматом на его int конвертацию вместо символа"),
(61,"Data operations","Цикл (for int i = 1;  ; i++)- динамический по отношению к размеру списка листа например. И если список листа будет уменьшаться походу цикла, количество шагов тоже уменьшится.");