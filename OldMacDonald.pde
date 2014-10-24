void setup()
{
	Farm DairyFarm = new Farm();
	DairyFarm.animalSounds();
}
interface Animal
{
	public String getSound();
	public String getType();
}
class Cow implements Animal
{
	protected String mySound;
	protected String myType;
	public Cow()
	{
		mySound = " moo";
		myType = "Cow ";
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class NamedCow extends Cow
{
	private String myName;
	public NamedCow()
	{
		mySound = " mehehehehehehehehe";
		myName = "Darth Cow ";
	}
	public String getName()
	{	
		return myName;
	}

}
class Turkey implements Animal
{
	private String mySound;
	private String myType;
	public Turkey()
	{
		mySound = " GOBBLEGOBBLEGOBBLE";
		myType = "Turkey ";
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class Llama implements Animal
{
	private String mySound;
	private String myType;
	public Llama()
	{
		mySound = " maaah";
		myType = "Llama ";
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class Chick implements Animal
{
	private String mySound;
	private String myType;
	public Chick()
	{
		if((Math.random()*1) < .5)
			mySound = " cheep";
		else
			mySound = " cluck";
		myType = "Chick ";
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class Farm
{
	private Animal[] FarmAnimals = new Animal[5];
	public Farm()
	{
		FarmAnimals[0] = new Cow();
		FarmAnimals[1] = new Turkey();
		FarmAnimals[2] = new Llama();
		FarmAnimals[3] = new Chick();
		FarmAnimals[4] = new NamedCow();
	}
	public void animalSounds()
	{
	for(int index = 0; index < FarmAnimals.length - 1; index++)
	
		println(FarmAnimals[index].getType() + "goes" + FarmAnimals[index].getSound());
		println("There is also a cow named " + ((NamedCow)FarmAnimals[4]).getName() + "that goes" + FarmAnimals[4].getSound());
	}
	
	
}
