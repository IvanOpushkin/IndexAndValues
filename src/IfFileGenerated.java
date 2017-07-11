import java.io.*;

/**
 * Created by Mega on 10.07.2017.
 */

/*Плановая модель программы

1.Прочесть файл в стринг билдер
2.Запись шаблоном 1 строки из второго файла

Что доделать - это начальное открытие файла доработать заменив точка с запятой на запятую

Будущее  через недели перевести на webMVC
    */

public class IfFileGenerated {

    private static String FILE_NAME = "C:\\Users\\Mega\\Music\\По 5тке руке\\JAVA Developer\\20 02 2017\\Тестовый Solution.sql";
    private static String FILE_NAME2 = "C:\\Users\\Mega\\Music\\По 5тке руке\\JAVA Developer\\20 02 2017\\Тестовый Solution - copy.sql";
    private static FileReader reader = null;
    private static BufferedReader reader2 = null;


    //статик блок не объявляет переменных, он просто инициализирует какойто код.
    //А также переменные
    //try with resources не работает тут
    //подделать параграфно и брно
    //доделать функцию список типов элементов, как хз, возможно регуляркой на между двумя запятыми.
    //есть ли ещё между двумя запятыми после слова VALUES ?

    //Чтобы инфа не терялась автоматом создавать копию в самом начале запуска программы

    static {

        try
       {
        reader = new FileReader(FILE_NAME);
        reader2 = new BufferedReader(new InputStreamReader(System.in));
       }
        catch(FileNotFoundException e)
        {

        }

    }

    public static void main(String[] args) throws IOException
    {
        StringBuilder finalSQLScriptFile = new StringBuilder();

       int a;

       // Проверка на нулевое изменение списка, тк есть подгон файла можно убрать
       //int checker = 0;

        while ( (a = reader.read()) != -1)
            finalSQLScriptFile.append((char)a);


        //Дорабкак вывести только то что после VALUES

        String currentPoint = finalSQLScriptFile.substring(finalSQLScriptFile.indexOf("VALUES"),
                finalSQLScriptFile.length());
        System.out.println("ТЕКУЩЕЕ СОСТОЯНИЕ");
        System.out.println();
        System.out.println(currentPoint);



        //Копия файла сэйв на крит
        FileWriter copy = new FileWriter(FILE_NAME2);
        copy.write(finalSQLScriptFile.toString());
        copy.close();


        //Подгон файла на добавление записей

        finalSQLScriptFile.deleteCharAt(finalSQLScriptFile.length() - 1);
        finalSQLScriptFile.append("," + '\r' + "\n");






        try(FileWriter writer = new FileWriter(FILE_NAME))
        {
            //**А зачем нам записывать в файл, то что уже существует.
            //Можно ведь записать просто новые строки, возможно нужен RandomAccessFile с
            //точки, тк так файл стирается.

            while (true) {


                StringBuilder addition = new StringBuilder();

                System.out.println("Будете ли вводить ещё данные? Если нет введите End");

                String b = reader2.readLine();

                if (b.equals("End")) break;

                System.out.println("Введите пожалуйста индекс секси кусочка(писеса Eng)");
                addition.append("(" + reader2.readLine());
                //finalSQLScriptFile.append("(" + reader2.readLine());
                System.out.println("Введите пожалуйста группу секси кусочка(писеса Eng)");
                addition.append(",\"" + reader2.readLine() + "\",\"");
                //finalSQLScriptFile.append(",\"" + reader2.readLine() + "\",\"");
                System.out.println("Введите пожалуйста секси кусочек(писеса Eng)");
                addition.append( reader2.readLine() + "\")," + '\r' + '\n');
                //finalSQLScriptFile.append( reader2.readLine() + "\")," + '\r' + '\n');

                System.out.println();
                System.out.println("ВНИМАНИЕ ПОДТВЕРЖДЕНИЕ ВВОДА ДАННЫХ");
                System.out.println("Проверьте введённые данные пожалуйста, сохранить их? Yes/No");
                System.out.println(addition.toString());


                String answer = reader2.readLine();

                if (answer.equals("Yes")) {
                    System.out.println();
                    finalSQLScriptFile.append(addition);
                    System.out.println("Строка = " + addition);
                    System.out.println("Успешно сохранена");
                }



            }



            String finol = finalSQLScriptFile.toString();
            System.out.println(finol);
            finol=""+finol.substring(0,finol.length()-3) + ";";

            System.out.println(finol);

            writer.write(finol);



            reader.close();
            reader2.close();
        }

    }


}
