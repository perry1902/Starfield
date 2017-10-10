Particle[] bob;
void setup()
{
	size(600,600);
	bob = new Particle[200];
	for (int i=1; i<bob.length;i++)
	{
		bob[i]=new Particle();
	}
	bob[0]= new OddballParticle();
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
	double myX,myY, theta,speed;
 	NormalParticle()
 	{
 		myX=300;
 		myY=300;
 		theta=(Math.random()*(2*PI));
 		speed=(Math.random()*5)+1;

 	} 
 	void move()
 	{
 		myX=myX+Math.cos(theta)*speed;
 		myY=myY+Math.sin(theta)*speed;
 	}
 	void show()
 	{
 		fill(250,160,5);
 		ellipse((float)myX,(float)myY,20,20);
 	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	
	int dx,dy;
	OddballParticle()
	{
		dx=250;
		dy=250;
	}
	public void move()
	{
		dx=dx + (int)(Math.random()*5)-2;
		dy=dy + (int)(Math.random()*5)-2;
	}
	public void show()
	{
		fill(0,0,200);
		ellipse(dx,dy,dx+50,dy+50);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}




