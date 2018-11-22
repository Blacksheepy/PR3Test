import java.util.Comparator;
import java.util.List;

import java.util.Arrays;
import java.util.ArrayList;


/**
 * Created by steffenmatheis on 18.12.17.
 */
public class ShakerSort<E extends Comparable<E>> implements Sort<E> {

    @Override
    public void sort(List<E> list, Comparator<E> cmp) {
        int start = -1;
        int end = list.size() - 1;
        boolean swapped;
        do {
            swapped = false;
            start++;
            for (int i = start; i < end; i++) {
                if (cmp.compare(list.get(i), list.get(i + 1)) > 0) {
                    swap(list, i, i + 1);
                    swapped = true;
                }
            }
            if (!swapped) { // nothing swapped → list sorted
                break;
            }
            swapped = false;
            end--;

            for (int i = end; i > start - 1; i--) {
                if (cmp.compare(list.get(i), list.get(i + 1)) > 0) {
                    swap(list, i, i + 1);
                    swapped = true;
                }
            }
        } while (swapped);
    }

    private void swap(List<E> list, int index1, int index2) {
        E tmp = list.get(index1);
        list.set(index1, list.get(index2));
        list.set(index2, tmp);
    }
}
