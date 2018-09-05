package el.function;

import java.util.concurrent.ThreadLocalRandom;

public class DiceThrowing {
	
	//MUST be STATIC and PUBLIC
	public static int throwDice() {
		return (ThreadLocalRandom.current().nextInt(6))+1;
	}
	
}
