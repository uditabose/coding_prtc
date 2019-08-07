package learning.nineplus;

import java.util.Map;

public class Mapified {
    public static void main(String[] args) {
        Map emptyImmutableMap = Map.of();
        Map nonemptyImmutableMap = Map.of(1, "one", 2, "two", 3, "three");
        System.out.printf("empty map : %s\n", emptyImmutableMap);
        System.out.printf("with some map : %s\n", nonemptyImmutableMap);
    }
}
