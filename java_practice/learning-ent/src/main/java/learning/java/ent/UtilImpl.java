package learning.java.ent;

public class UtilImpl implements Util{
	enum State {
		SHOUTING,
		STARING, 
		TALKING, 
		WHINNING, 
		READING, 
		WRITING, 
		SLEEPING
	}
	public int whatsTheCurrentAngerLevel(State herState) {
		switch(herState) {
		case SLEEPING: 
			return 0;
		case WRITING:
			return 1;
		case READING:
			return 2;
		case WHINNING:
			return Util.staticAnger();
		case TALKING:
			return Util.staticAnger() + 1;
		case STARING:
			return Util.staticAnger() * 2;
		case SHOUTING:
			return this.getHighestLevelofAnger();
		default:
			return this.getHighestLevelofAnger()/2;
		}
	}
}
