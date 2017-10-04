NormalParticle bob[];
void setup()
{
	size(500,500);
	bob = new NormalParticle[10];
	for (int i=0; i<bob.length;i++)
	{
		bob[i]=new NormalParticle();
	}
}
void draw()
{
	background(0);
for (int i=0; i< bob.length; i++)
 	{
 		bob[i].move();
 		bob[i].show();
 	}
}
class NormalParticle
{
	float myX, myY;
	NormalParticle()
	{
		myX=250;
		myY=250;
	}
	void move()
	{
		//myX=myX + cos((float)(Math.random());
		//fix
 		//myY=myY + sin((float)(Math.random()));
	}
	void show()
	{
		fill(250,160,0);
		ellipse(myX,myY,20,20);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

