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
(61,"Data operations","Цикл (for int i = 1;  ; i++)- динамический по отношению к размеру списка листа например. И если список листа будет уменьшаться походу цикла, количество шагов тоже уменьшится."),
(62,"Data operations","Вызов метода родителя просто super.methodName();"),
(63,"JavaRush","После решения и всех проверок посмотреть обсуждения, возможно задать вопрос."),
(64,"Interesting Facts","Евклид 8 век. Формула НОД. Наибольшего общего делителя двух чисел. A делим на Б остаточное C переносим в Б а Б переносим в А. Пока остаток не равен нулю. Тогда текущее Б и есть НОД."),
(65,"Java Reader","Если конструктор инициализируется полем его класса это не прокатит. Т.к по визитке конструктора ещё не создан этот экземпляр класса."),
(66,"Debug","Debugger в Java след действие F8 след breakpoint F9"),
(67,"Debug","Можно вставлять brakpoints походу дебага п.66"),
(68,"Java Reader","Проблема классов отцов и детей, если унаследованный класс создаёт экземпляр отца гдето внутри, метод одноименный обращаясь к отцоэкземпляра вызовется дочерний. Чтоб этого не было спасёт Private модификатор в отце у одноименного метода."),
(69,"Java Reader","3 пункта чтения листа файла. 1 - инициализируется статик блоки и статика наравне с мэйном попорядку. 2.По обращению экземпляра в память инициализируются нонстатик блоки(в мэйне) по порядку, возможно пустые написания класса. Тоесть если в нонстатике есть переменные инициализируемые после нонстатик блока. Они не попадут в него. 3тье. И только после создание заполнения экземпляром нонстатик блок инициализируется правильно."),
(70,"Java Reader","НонСтатик блок отморозок у которого сразу не инициализируются переменные, если они стоят за ним в классе"),
(71,"Java bugs","Следовать полностью условию, могут заставить даже, чтобы кидалось исключение и ловилось. В обход обычное доп проверки на null скажем."),
(72,"Delete","Модификаторы доступа не добавляют уникальности конструктору, всё решают параметры п.34"),
(73,"IOS","String File_Name = "C:\\2экрана на каждый File.separator\\xx" "),
(74,"IOS","BufferedReader reader = new BufferedReader(new FileReader(FILE_NAME));"),
(75,"IOS","Читать по одному символу или строку удобно как String a = ""; while (a = reader.readLine()!= null) {System.out.println(a);}"),
(76,"IOS","BufferedReader reader = new BufferedReader(new InputStreamReader(System.in,"cp1251");"),
(77,"Interesting","OOP is like a light. Life's light. 0101 devider to objects 0 1 0 1 "),
(78,"Java Language","Abstract classes may have constructor and even not empty methods"),
(79,"Java Language","Abstact class may have construcror, and even not empty methods unlike interface"),
(80,"String","String [] hell = stringValue.split(" ");"),
(81,"Java Language","Два экрана также нужны регулярным выражениям сверху слева начало. (не лямбды) При этом в стринг ковычки например экранируются одним знаком для вставки в текст"),
(82,"Thread","3 метода Thread. Thread.start(); (Запускает нить в классе) Thread.interrupt(); (Прерывает нить) Thread.isInterrupted(); (Выводит булеан прервана ли нить)"),
(84,"Thread","Условия существования класса нити Thread. Extends Threads. Implements Runnable."),
(83,"Thread","Должно быть 84 (вся логика нитки прописывается в методе void run();)"),
(85,"Exception","Класс экстендит UncaughtExceptionHandeler защита от любых исключений"),
(85,"Exception","Thread.UncaughtExceptionHandler это интерфейс дающий классу свойство защитника от ошибок"),
(86,"Exception","единственный метод переписываемый с интерфейса п.85 public void UncaughtException(Thread t, Throwable e){//TODO}"),
(87,"Exception","class.setUncaughtExceptionHandler(classWithImplementedHandler);"),
(87,"Exception","Там класс обязательно нитка.setUncaughtExceptionHandler(...);"),
(88,"Static","olution.class.getName() - Обращение без экземпляра полу статика"),
(89,"Java Language","instanceOf крутая проверка на эдинтичность классов 1 в 1"),
(90,"Cool Staff","A + B = C уровнем выше или уровнем ниже кудаб не опускались, простейшая инкапсуляция"),
(93,"Info Structure","Less info old stuff more exercise (main info + 1 bonus max) NOW 3 per day big good 5-6 "),
(94,"Info Structure","Real 94 Less info old stuff more exercise (main info + 1 bonus max) NOW 3 per day big good 5-6"),
(93,"CrUD","Базовые операции create read update delete с любой инфой от пользователя до большой базы данных графики комп игры"),
(99,"Interesting Facts","Транзакционность выполнить абсолютно все условия, либо операция не будет выполнена вообще."),
(100,"Thread","Thread это просто очень намодифицированная функция класса."),
(97,"Cool paterns","Singelton - единственный экземпляр. Конструктор прайват. Переменная Singelton private final static. Методы паблик. Метод getOurInstance возвращает наш единственный экземпляр OurInstance."),
(91,"Cool Patterns","Switch - пишется примерно так switch(Object object){case:do smth; break; case2:do smth else; break; ....default:do smth; break}"),
(92,"Date","SimpleDateFormat formatter = new SimpleDateFormat("DD MM YYYY"); String date = formatter.format(date);"),
(92,"Date","Доп. если мелкими буквами в формате Январь станет нулём нитак удобно. Также в new SimpleDateFormat(x, второй элемент); Второй элемент например Locale.ENGLISH укажет на формат даты в регионе."),
(95,"Interesting","Queue<Order> restaraunt = new ConcurrentQueue<Order>(); очереди стака обновляются лучше под рестараны кафэ"),
(98,"Interesting facts","Делегирование полномочий (обёртывание темки) в новый класс управлятор. 1.класс управлятор наследуется от класса темки либо его интерфейса.2. применяются все методы данного наследования имплементирования, но только через экземпляр которым управляют. 3. Возможность добавлять доп функционал"),
(96,"Thread","Предохраняйтесь synchronized(ArrayList){} допуск к аррэй листу всех строго поочереди. Управление процессами триллионниками."),
(100,"Помарки","В 74 FileInputStream а не FileReader, в 97 getInstance() возвращающий наш экземпляр");