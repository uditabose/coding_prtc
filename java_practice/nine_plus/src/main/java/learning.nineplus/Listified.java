package learning.nineplus;

import java.util.*;

public class Listified {
    public static void main(String... args) {
        List emptyList = List.of();
        System.out.printf("empty list :: %s", emptyList);
        System.out.println();

        List immutableList = List.of("one", "two", "three");
        System.out.printf("immutable list :: %s", immutableList);
        System.out.println();
        // runtime error
        // immutableList.add("four");

    }
}