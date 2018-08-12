package learning.java.ent;

import static org.junit.Assert.*;

import org.junit.Test;

import learning.java.ent.UtilImpl.State;

public class UtilImplTest {

	@Test
	public void testAngerLevel() {
		UtilImpl impl = new UtilImpl();
		assertEquals(impl.whatsTheCurrentAngerLevel(State.READING), 2);
	}

}
