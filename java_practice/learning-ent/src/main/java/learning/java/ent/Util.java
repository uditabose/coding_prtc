package learning.java.ent;

public interface Util {
	default int getHighestLevelofAnger() {
		return midAnger() * 2;
	}
	
	private int midAnger() {
		return 5;
	}
	
	static int staticAnger() {
		return 4;
	}
}
