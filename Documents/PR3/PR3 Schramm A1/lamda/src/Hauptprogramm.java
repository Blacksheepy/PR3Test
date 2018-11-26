import java.util.Arrays;
  class Hauptprogramm{

/* using object as a data type is not save.
this causes allsorts of warnings
it does solve the problem that the algorythm uses wildcards for type
and the method was required to be static*/
    public static void sortArray(Object[]unsorted, Sort sAlg){
      try{
      sAlg.sort(unsorted);
    }
    catch(IllegalArgumentException iae){
      iae.getMessage();
      System.err.print("your array data type does not implement comparable");
    }
    }


public static void main(String[] ARGV){
  //Pre initialized arrays to test 
   String[] lyrix={"So", "we", "sailed"," up", "to", "the", "sun","'Til", "we" ,"found",
  "the", "sea", "of", "green", "And", "we","lived", "beneath", "the" ,"waves", "In", "our", "yellow", "sub","marine" };

  String[] lyrics = {"Hey", "jude,"," don't", "make", "it", "bad.", "Take", "a", "sad", "song", "and", "make", "it", "better"};
Integer[] numbers={ 23,1,66,8,3,2,41,7,84,5,43,2,57,7,78,};
Integer[] nums= {9,43,357,323 ,22,656,1, 878,3,656,23,67,34};

  System.out.println(Arrays.toString(lyrix));

  System.out.println(" after sorting:");
  sortArray(lyrix, new ShakerSort());
  System.out.println(Arrays.toString(lyrix));
  System.out.println("different array before sorting");
  System.out.println(Arrays.toString(lyrics));
  sortArray(lyrics, new BubbleSort());
  System.out.println("different array after sorting");
  System.out.println(Arrays.toString(lyrics));
  System.out.println("before sorting \n"+Arrays.toString(nums));
  sortArray(nums, new BubbleSort());

  System.out.println("after sorting \n"+Arrays.toString(nums));

}
}
