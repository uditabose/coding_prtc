package learning.nineplus;

import java.security.SecureRandom;

public interface CardIntf {
    default Long getCardID() {
        return createCardID();
    }

    private Long createCardID(){
        return (new SecureRandom()).nextLong();
    }

    private static void displayCardDetails(){
        System.out.print("Card displayed");
    }
}
