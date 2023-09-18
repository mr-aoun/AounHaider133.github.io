public class InnerClassDemo {
	public static void main (String[] args)
	{
		Oyster o = new Oyster ( 550 );
		Oyster.Pearl p = o.new Pearl(40, "Black");		
		// Pearl p = new Pearl (30, "White");
		System.out.println(p);
	}
}

class Oyster
{
	private int oWeight;
	public Oyster ( int oWeight )
	{
		this.oWeight = oWeight;
	}
	class Pearl {
		int pWeight;
		String color;
		public Pearl (int pWeight, String color)
		{
			this.pWeight = pWeight;
			this.color = color;
		}
		public String toString()
		{	
			return "This pearl lives in a " + oWeight + 
				" gm oyster, its own weight is " + pWeight + 
				" and its color is " + color;
		}
	}
}