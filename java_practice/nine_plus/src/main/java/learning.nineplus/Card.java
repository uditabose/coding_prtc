package learning.nineplus;

public class Card implements CardIntf {
    public void displayCard() {
        System.out.printf(" ID : %d\n", getCardID());
    }
}
