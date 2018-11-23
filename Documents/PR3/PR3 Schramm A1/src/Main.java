import java.util.Comparator;
import java.util.List;

import java.util.Arrays;
import java.util.ArrayList;
import java.util.Random;

public class Main<<E extends Comparable<E>> implements Sort<E>  {
	
	
	private static final int Comparator = 0;

	public static void main(String[]Args) {
		InsertionSort shake = new InsertionSort();
		Integer number;
		List<Integer> intArr = new ArrayList<Integer>();
		Comparable[] list = new Comparable[10];
		Comparator<E> cmp = new Comparator<E>;
		
		//Fill the array with 10 random numbers up to 100
		/*
		for (int i = 0; i<=10; i++) {
			arr.add(number = (int)(Math.random()*100));
		}
		*/
		for(int i = 0; i< list.length; i++) {
			list[i] = (int)(Math.random()*100);
			System.out.print(list[i] + " ");
		}
		
		Comparator<Integer> comparator = new Comparator<Integer>();

	
		
		Sort<Integer> sortIt = (list, comparator) -> {
			
		};
		


		
	}
}
