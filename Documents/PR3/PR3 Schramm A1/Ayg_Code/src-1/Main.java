import java.lang.System.*;
import java.util.Collection;
import java.util.Arrays;

public class Main {


    public static <A extends Comparable<A>> void sortArray(Sort tasker, A[] arr) {
        tasker.sort(arr);
    }


    public static void main(String[] avrgv) {


        Integer[] array1 = {99, 1, 2, 10, 32, 25, 3, 4, 5};
        String[] array2 = {"zs", "as", "cs", "d", "s", "a", "b"};

        ShakerSort<Integer> Inter = new ShakerSort<>();
        ShakerSort<String> Striner = new ShakerSort<>();

        sortArray(new ShakerSort(), array1);
        sortArray(new BubbleSort(),array2);

        for (int i = 0; i < array1.length; i++)
            System.out.print(" " + array1[i]);

        System.out.println();
        for (int i = 0; i < array2.length; i++)
            System.out.print(" " + array2[i]);


//        Main<Integer> obj1 = new Main<>();
//        Main<String> obj2 = new Main<>();


//        obj1.Sorter.ShakerSort(array1);
//        for (int i = 0; i < array1.length; i++)
//            System.out.print(" " + array1[i] + " ");
//
//        System.out.println();
//        System.out.println(array2[4].compareTo(array2[5]));
//        obj2.Sorter.ShakerSort(array2);
//        for (int i = 0; i < array2.length; i++)
//            System.out.print(" " + array2[i] + " ");
//
//
//        System.out.println(" Lambda:");


    }

}

