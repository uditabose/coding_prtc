package learning.java.ent;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Stream;

public class JavaE {
	public void iter() {
		List<Integer> intList = new ArrayList<>();
		intList.add(1);
		intList.add(10);
		intList.add(100);
		intList.add(1000);
		intList.add(10000);
		intList.add(100000);
		
		intList.forEach(new Consumer<Integer>() {
			public void accept(Integer anInt) {
				System.out.println(anInt);
			}
		});
	}
	
	public void stream() {
		List<Integer> intList = new ArrayList<>();
		intList.add(1);
		intList.add(10);
		intList.add(100);
		intList.add(1000);
		intList.add(10000);
		intList.add(100000);
		intList.add(2);
		intList.add(20);
		intList.add(200);
		intList.add(2000);
		intList.add(20000);
		intList.add(200000);
		intList.add(3);
		intList.add(30);
		intList.add(300);
		intList.add(3000);
		intList.add(30000);
		intList.add(300000);
		
		Stream<Integer> parallelStream = intList
				.parallelStream()
				.filter(predicate -> predicate % 60 == 0);
		parallelStream.forEach(elem -> System.out.println(elem));
	}
	
	public void times() {
		LocalDate today = LocalDate.now();
		LocalTime nowTime = LocalTime.now();
		System.out.println(String.format("%s :: %s", today, nowTime));
		
		LocalDate todayInKolkata = LocalDate.now(ZoneId.of("Asia/Kolkata"));
		LocalTime nowInKolkata = LocalTime.now(ZoneId.of("Asia/Kolkata"));
		System.out.println(String.format("%s :: %s", todayInKolkata, nowInKolkata));
	}
	
	public static void main(String[] args) {
		JavaE javae = new JavaE();
		javae.iter();
		
		SingleMethod singleMethod = (string) -> System.out.println("Hello " + string );;
		singleMethod.singleMethod("la la la");
		System.out.println("--------");
		javae.stream();
		System.out.println("--------");
		javae.times();
	}
}

interface Diamond1 {
	default int method() {
		return 1;
	}
	
	int nonDefault();
}

interface Diamond2 {
	default int method() {
		return 2;
	}
	
	int nonDefault();
}

class Diamondee implements Diamond1, Diamond2 {

	// without this method this fails
	@Override
	public int method() {
		return Diamond1.super.method();
	}

	// it has to be here, after all this 
	// is a concrete implementation
	@Override
	public int nonDefault() {
		return 0;
	}

}

interface SingleMethod {
	public void singleMethod(String aString);
}
