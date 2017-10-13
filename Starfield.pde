Particle[] bob;
void setup()
{
	size(600,600);
	bob = new Particle[150];
	for (int i=0; i<bob.length;i++)
	{
		bob[0]= new OddballParticle();
		bob[1]= new JumboParticle();
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
class NormalParticle implements Particle  
{
	double myX,myY, theta,speed;
 	NormalParticle()
 	{
 		myX=300;
 		myY=300;
 		theta=(Math.random()*(2*PI));
 		speed=(Math.random()*3)+1;

 	} 
 	public void move()
 	{
 	
 		{ 
 		myX=myX+Math.cos(theta)*speed;
 		myY=myY+Math.sin(theta)*speed;
		} 	
 	}
 	public void show()
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
		dx=300;
		dy=300;
	}
	public void move()
	{
		dx=dx + (int)(Math.random()*5)-2;
		dy=dy + (int)(Math.random()*5)-2;
	}
	public void show()
	{
		fill(0,0,200);
		rect(dx,dy,50,50);
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill(50,50,150);
		ellipse((float)myX,(float)myY,50,50);
	}
}




