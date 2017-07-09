import java.io.*;

/**
 * Created by Mega on 10.07.2017.
 */

/*Плановая модель программы

1.Прочесть файл в стринг билдер
2.Запись шаблоном 1 строки из второго файла
    */

public class IfFileGenerated {

    private static String FILE_NAME = "C:\\Users\\Mega\\Music\\По 5тке руке\\JAVA Developer\\20 02 2017\\Тестовый Solution.sql";
    private static FileReader reader = null;
    private static BufferedReader reader2 = null;


    //статик блок не объявляет переменных, он просто инициализирует какойто код.
    //А также переменные
    //try with resources не работает тут

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

        while ( (a = reader.read()) != -1)
            finalSQLScriptFile.append((char)a);




        try(FileWriter writer = new FileWriter(FILE_NAME))
        {

            //**А зачем нам записывать в файл, то что уже существует.
            //Можно ведь записать просто новые строки, возможно нужен RandomAccessFile с
            //точки, тк так файл стирается.

            while (true) {

                System.out.println("Будете ли вводить ещё данные? Если нет введите End");

                String b = reader2.readLine();

                if (b.equals("End")) break;

                System.out.println("Введите пожалуйста индекс секси кусочка(писеса Eng)");
                finalSQLScriptFile.append("(" + reader2.readLine());
                System.out.println("Введите пожалуйста группу секси кусочка(писеса Eng)");
                finalSQLScriptFile.append(",\"" + reader2.readLine() + "\",\"");
                System.out.println("Введите пожалуйста секси кусочек(писеса Eng)");
                finalSQLScriptFile.append( reader2.readLine() + "\")," + '\r' + '\n');

            }


            //Доработать с последним индексом чек на запятую замену на точка запятую
            String finol = finalSQLScriptFile.toString();
            System.out.println(finol);
            finol=""+finol.substring(0,finol.length()-3) + ";";
            System.out.println(finol);

            writer.write(finol);



            reader.close();
            reader2.close();
        }

       // System.out.println(finalSQLScriptFile.toString());





    }


}
