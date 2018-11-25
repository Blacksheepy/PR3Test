package Aufgabe1;

import java.util.Comparator;
import java.util.List;

import java.util.Arrays;
import java.util.Collections;
import java.util.ArrayList;
import java.util.Random;

public class MainMain {
	
	public static void main(String[] args) {
		//Integer [] number = new Integer [5];
		List<Integer> listar = new ArrayList<Integer>(10);
		List<String> listar2 = new ArrayList<String>(5);
		listar2.add("Schoko");
		listar2.add("Hallo");
		listar2.add("Schokolade");
		listar2.add("ein");
		listar2.add("bier");
		
		Comparator<Integer> cmp = new Comparator<Integer>() {
			public int compare(Integer a1, Integer a2) {
				return Integer.valueOf(a1).compareTo(Integer.valueOf(a2));
			}
		};
		Comparator<String> cmp1 = new Comparator<String>() {
			public int compare(String a1, String a2) {
				return String.valueOf(a1).compareTo(String.valueOf(a2));
			}
		};
		
		InsertionSort<Integer> insSort = new InsertionSort<Integer>();
		ShakerSort<String> shakSort = new ShakerSort<String>();
		
		
		for(int i = 0; i <= 10; i++) {
			listar.add((int)(Math.random()*100));
			//System.out.println(listar);
		}

		System.out.println(listar);
		//shakSort.sort(listar, cmp);
		insSort.sort(listar, cmp);
		System.out.println(listar);
		
		System.out.println(listar2);
		shakSort.sort(listar2, cmp1);
		System.out.println(listar2);
		
		
	}


}
