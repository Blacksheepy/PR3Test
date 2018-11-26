import java.util.Comparator;

 class BubbleSort<A extends Comparable<A>> implements Sort<A> {
//same method as other sort because of same interface sort.
    public void sort(A arr[]) {
        A temp;
        for (int i = 0; i <= arr.length - 1; i++) {
            for (int j = 0; j < arr.length - i - 1; j++) {

                if (arr[j].compareTo(arr[j + 1]) > 0) {
                    System.out.println(arr[j] + " compare to " + arr[j + 1]);
                    temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }
}
