import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Created by Mega on 08.07.2017.
 */

//Создать файл который создаст шаблон новой MySQL таблицы в новом Notepad ++ ручным вводом.
// Тип файла .sql

public class IndexGenerator  {


    //аналогия заполнения аргс, примитивная

    private static BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
    private static String FILE_NAME = "C:\\Users\\Mega\\Music\\По 5тке руке\\JAVA Developer\\20 02 2017\\Тестовый Solution.sql";
    private static FileWriter writer = null;
    static {


        try

        {
             writer = new FileWriter(FILE_NAME);
        } catch (IOException e)
        {

        }
    }
    //аргсы бывает задаются в самом начале файла, возможно из фрэймворков внешних источников
    //Кластерная память путь к гениальности. Подругрппы
    //Вопрос закончено ли строительство таблицы либо закончено ли строительство тела таблицы

    //Открытое для вариаций


    //Основой будет StringBuilder

    public static void main(String[] args) throws IOException
    {
        StringBuilder finalSQLScriptFile = new StringBuilder();


        //Возмонжо ли добавление без обратной каретки, как воспримит компилятор

        //удаление базы (проверка на существование)
        finalSQLScriptFile.append("DROP DATABASE IF EXISTS bestValues;" + '\r'+'\n'+ '\r'+'\n');
        //создание новой базы
        finalSQLScriptFile.append("CREATE DATABASE bestValues;" + '\r'+'\n' + '\r'+'\n');
        //использовать схему
        finalSQLScriptFile.append("USE bestValues;" + '\r'+'\n' + '\r'+'\n' );
        //создать таблицу в базе данных
        finalSQLScriptFile.append("CREATE TABLE `cool staff`(" + '\r'+'\n' + '\r'+'\n');

        //Поле номера
        finalSQLScriptFile.append("`ID` INT(8) NOT NULL AUTO_INCREMENT," + '\r'+'\n');
        //Поле группы по содержанию
        finalSQLScriptFile.append("`GROUPNAME` VARCHAR(50) NOT NULL DEFAULT '0'," + '\r'+'\n');
        //Поле содержания (узнать по длинне)
        finalSQLScriptFile.append("`COOLTEXT` VARCHAR(2000) NOT NULL DEFAULT '0',"  + '\r'+'\n');
        //сортировка по ID
        finalSQLScriptFile.append("PRIMARY KEY (`ID`))"  + '\r'+'\n' + '\r'+'\n');

        //добавление правильное кодировки
        finalSQLScriptFile.append("COLLATE='UTF8_GENERAL_CI';" + '\r'+'\n' + '\r'+'\n');

       //шаблон заполнения
        finalSQLScriptFile.append("INSERT INTO `cool staff`(`ID`,`GROUPNAME`,`COOLTEXT`)" + '\r'+'\n');

        //значения
        finalSQLScriptFile.append("VALUES" + '\r'+'\n');

        //заполнение значениями (экранировать ковычки)

        while (true) {
            finalSQLScriptFile.append("(" + reader.readLine() + ",\"" + reader.readLine() + "\",\"" + reader.readLine() + "\")," + '\r' + '\n');

            System.out.println("Будете ли вводить ещё данные? Если нет введите End");

            String a = reader.readLine();

            if (a.equals("End")) break;
        }

        //переспрашивать всё ли правильно или ввести заного ФУНКЦИЯ


        finalSQLScriptFile.append("(344,\"последняя строка\",\"последняя строка\");"+'\r'+'\n');

        //StringBuilder имеет в себе очень много полезных функций, mutable

        System.out.println(finalSQLScriptFile);

        writer.write(finalSQLScriptFile.toString());


        //Закрыть потоки критичное

        reader.close();
        writer.close();

    }
}
